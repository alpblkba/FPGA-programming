`timescale 1ns / 1ps

module task3 (
    input  wire        clk,
    input  wire        rst,        // ACTIVE HIGH RESET

    input  wire [2:0]  opcode,     // [51:49]
    input  wire [7:0]  in2,        // x
    input  wire [7:0]  in1,        // y
    input  wire [7:0]  in0,        // z

    output reg signed [23:0] result,     // [47:24] signed 24-bit
    output reg         done        // [48]
);

    // ============================================================
    // Combinational ALU (opcode 0–6)
    // ============================================================
    reg signed [23:0] comb_result;

    always @(*) begin
        case (opcode)
            3'b000: comb_result = $signed({8'd0,in1}) + $signed({8'd0,in2});
            3'b001: comb_result = $signed({8'd0,in2}) - $signed({8'd0,in1});
            3'b010: comb_result = $signed($signed(in1)) * $signed($signed(in2));
            3'b011: comb_result = $signed($signed(in2)) >>> in1; // arithmetic shift is safer if signed
            3'b100: comb_result = $signed($signed(in1)) * $signed($signed(in1));
            3'b101: comb_result = $signed($signed(in1)) * $signed($signed(in1)) * $signed($signed(in1));
            3'b110: comb_result = $signed($signed(in1)) + $signed($signed(in2)) + $signed($signed(in0));
            default: comb_result = 24'sd0;
        endcase
    end

    // ============================================================
    // Polynomial FSM (opcode == 7)
    // F(x,y,z) = 5x² + 8x − 4y² + 3y + 6z² − 2z + 13
    // ============================================================

    // Latched values (use full signed 8-bit)
    reg [2:0] opcode_reg;
    reg signed [7:0] x_reg, y_reg, z_reg;

    // Signed coefficient constants (sized)
    localparam signed [7:0] A =  8'sd5;
    localparam signed [7:0] B =  8'sd8;
    localparam signed [7:0] C = -8'sd4;
    localparam signed [7:0] D =  8'sd3;
    localparam signed [7:0] E =  8'sd6;
    localparam signed [7:0] Fcoef = -8'sd2; // avoid name F clash
    localparam signed [15:0] G = 16'sd13;

    reg [2:0] state;
    // widen acc to 32 bits signed to be safe for intermediate sums
    reg signed [31:0] acc;

    localparam S_IDLE   = 3'd0;
    localparam S_LOAD   = 3'd1;
    localparam S_AX2    = 3'd2;
    localparam S_BX     = 3'd3;
    localparam S_CY2    = 3'd4;
    localparam S_DY     = 3'd5;
    localparam S_EZ2    = 3'd6;
    localparam S_FZ     = 3'd7;

    // ============================================================
    // Sequential Logic
    // ============================================================
    always @(posedge clk) begin
        if (rst) begin
            state      <= S_IDLE;
            acc        <= 0;
            result     <= 0;
            done       <= 0;
            opcode_reg <= 0;
            x_reg      <= 0;
            y_reg      <= 0;
            z_reg      <= 0;
        end
        else begin
            case (state)
                S_IDLE: begin
                    done <= 0;
                    if (opcode == 3'b111) begin
                        // Latch full 8-bit signed inputs
                        opcode_reg <= opcode;
                        x_reg <= $signed(in2);
                        y_reg <= $signed(in1);
                        z_reg <= $signed(in0);
                        // Start accumulator with constant G (widened)
                        acc <= $signed(G);
                        state <= S_AX2;
                    end
                    else begin
                        result <= comb_result;
                        done   <= 1'b1;
                        state  <= S_IDLE;
                    end
                end

                S_AX2: begin
                    // widen multiplications to 32-bit before adding
                    acc <= acc + $signed(A) * $signed(x_reg) * $signed(x_reg);
                    state <= S_BX;
                end

                S_BX: begin
                    acc <= acc + $signed(B) * $signed(x_reg);
                    state <= S_CY2;
                end

                S_CY2: begin
                    acc <= acc + $signed(C) * $signed(y_reg) * $signed(y_reg);
                    state <= S_DY;
                end

                S_DY: begin
                    acc <= acc + $signed(D) * $signed(y_reg);
                    state <= S_EZ2;
                end

                S_EZ2: begin
                    acc <= acc + $signed(E) * $signed(z_reg) * $signed(z_reg);
                    state <= S_FZ;
                end

                S_FZ: begin
                    acc <= acc + $signed(Fcoef) * $signed(z_reg);
                    // assign result from acc (no double-count)
                    // narrow/clip acc to 24 bits: take lower 24 bits of two's complement representation
                    // We simply assign lower 24 bits — ensure acc range fits. Use signed slicing:
                    result <= acc[23:0];
                    done <= 1'b1;
                    state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule
