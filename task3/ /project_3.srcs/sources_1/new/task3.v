`timescale 1ns / 1ps

module task3 (
    input  wire        clk,
    input  wire        rst,        // ACTIVE HIGH RESET

    input  wire [2:0]  opcode,     // [51:49]
    input  wire [7:0]  in2,        // a (in_port[23:16])
    input  wire [7:0]  in1,        // b (in_port[15:8])
    input  wire [7:0]  in0,        // c (in_port[7:0])

    output reg signed [23:0] result,     // [47:24] signed 24-bit
    output reg         done        // [48]
);

    // ============================================================
    // combinational ALU (opcode 0–6)
    // mapping: a = in2, b = in1, c = in0
    // ============================================================
    reg signed [23:0] comb_result;

    always @(*) begin
        case (opcode)
            // 0: b + c
            3'b000: comb_result = $signed({8'd0,in1}) + $signed({8'd0,in0});
            // 1: c - b
            3'b001: comb_result = $signed({8'd0,in0}) - $signed({8'd0,in1});
            // 2: c * b
            3'b010: comb_result = $signed($signed(in0)) * $signed($signed(in1));
            // 3: c >> b (arithmetic shift)
            3'b011: comb_result = $signed($signed(in0)) >>> in1; 
            // 4: b^2
            3'b100: comb_result = $signed($signed(in1)) * $signed($signed(in1));
            // 5: c^3
            3'b101: comb_result = $signed($signed(in0)) * $signed($signed(in0)) * $signed($signed(in0));
            // 6: a + b + c
            3'b110: comb_result = $signed($signed(in2)) + $signed($signed(in1)) + $signed($signed(in0));
            default: comb_result = 24'sd0;
        endcase
    end

    // ============================================================
    // polynomial FSM (opcode == 7)
    // F(a,b,c) = 5a^2 + 8a - 4b^2 + 3b + 6c^2 - 2c + 13
    // mapping: a = in2, b = in1, c = in0
    // ============================================================

    // latched values (use full signed 8-bit)
    reg [2:0] opcode_reg;
    reg signed [7:0] a_reg, b_reg, c_reg;

    // signed coefficient constants
    localparam signed [7:0] A_COEF =  8'sd5;
    localparam signed [7:0] B_COEF =  8'sd8;
    localparam signed [7:0] C_COEF = -8'sd4;
    localparam signed [7:0] D_COEF =  8'sd3;
    localparam signed [7:0] E_COEF =  8'sd6;
    localparam signed [7:0] F_COEF = -8'sd2; 
    localparam signed [15:0] G_COEF = 16'sd13;

    reg [2:0] state;
    // widen acc to 32 bits signed to be safe for intermediate sums
    reg signed [31:0] acc;

    localparam S_IDLE   = 3'd0;
    localparam S_AX2    = 3'd1;
    localparam S_BX     = 3'd2;
    localparam S_CY2    = 3'd3;
    localparam S_DY     = 3'd4;
    localparam S_EZ2    = 3'd5;
    localparam S_FZ     = 3'd6;
    localparam S_DONE   = 3'd7;

    // ============================================================
    // sequential logic
    // ============================================================
    always @(posedge clk) begin
        if (rst) begin
            state      <= S_IDLE;
            acc        <= 0;
            result     <= 0;
            done       <= 0;
            opcode_reg <= 0;
            a_reg      <= 0;
            b_reg      <= 0;
            c_reg      <= 0;
        end
        else begin
            case (state)
                S_IDLE: begin
                    done <= 0;
                    if (opcode == 3'b111) begin
                        opcode_reg <= opcode;
                        a_reg <= $signed(in2);
                        b_reg <= $signed(in1);
                        c_reg <= $signed(in0);
                        acc <= $signed(G_COEF);
                        state <= S_AX2;
                    end
                    else begin
                        result <= comb_result;
                        done   <= 1'b1;
                        state  <= S_IDLE;
                    end
                end

                S_AX2: begin
                    acc <= acc + $signed(A_COEF) * $signed(a_reg) * $signed(a_reg);
                    state <= S_BX;
                end

                S_BX: begin
                    acc <= acc + $signed(B_COEF) * $signed(a_reg);
                    state <= S_CY2;
                end

                S_CY2: begin
                    acc <= acc + $signed(C_COEF) * $signed(b_reg) * $signed(b_reg);
                    state <= S_DY;
                end

                S_DY: begin
                    acc <= acc + $signed(D_COEF) * $signed(b_reg);
                    state <= S_EZ2;
                end

                S_EZ2: begin
                    acc <= acc + $signed(E_COEF) * $signed(c_reg) * $signed(c_reg);
                    state <= S_FZ;
                end

                S_FZ: begin
                    acc <= acc + $signed(F_COEF) * $signed(c_reg);
                    state <= S_DONE; 
                end

                S_DONE: begin
                    // narrow acc to 24 bits
                    result <= acc[23:0];
                    done <= 1'b1;
                    state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule