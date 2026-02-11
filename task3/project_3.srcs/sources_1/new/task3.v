`timescale 1ns / 1ps

module task3 (
    input  wire        clk,
    input  wire        rst,        // ACTIVE HIGH RESET

    input  wire [2:0]  opcode,     // [51:49]
    input  wire [7:0]  in2,        // [23:16] -> x
    input  wire [7:0]  in1,        // [15:8]  -> y
    input  wire [7:0]  in0,        // [7:0]   -> z

    output reg  [23:0] result,     // [47:24]
    output reg         done        // [48]
);

    // ============================================================
    // Combinational ALU (opcode 0–6)
    // ============================================================

    reg [23:0] comb_result;

    always @(*) begin
        case (opcode)
            3'b000: comb_result = in1 + in2;
            3'b001: comb_result = in2 - in1;
            3'b010: comb_result = in1 * in2;
            3'b011: comb_result = in2 >> in1;
            3'b100: comb_result = in1 * in1;
            3'b101: comb_result = in1 * in1 * in1;
            3'b110: comb_result = in1 + in2 + in0;
            default: comb_result = 24'd0;
        endcase
    end

    // ============================================================
    // Polynomial FSM (opcode == 7)
    // F(x,y,z) = 5x² + 8x − 4y² + 3y + 6z² − 2z + 13
    // ============================================================

    // Latched values (VERY IMPORTANT)
    reg [2:0] opcode_reg;
    reg signed [5:0] x_reg, y_reg, z_reg;

    // Signed coefficient constants
    localparam signed [4:0] A =  5;
    localparam signed [4:0] B =  8;
    localparam signed [4:0] C = -4;
    localparam signed [4:0] D =  3;
    localparam signed [4:0] E =  6;
    localparam signed [4:0] F = -2;
    localparam signed [4:0] G = 13;

    reg [2:0] state;
    reg signed [18:0] acc;

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

                // ------------------------------------------------
                // IDLE
                // ------------------------------------------------
                S_IDLE: begin
                    done <= 0;

                    if (opcode == 3'b111) begin
                        // Latch everything ONCE
                        opcode_reg <= opcode;
                        x_reg <= {2'b00, in2[3:0]};
                        y_reg <= {2'b00, in1[3:0]};
                        z_reg <= {2'b00, in0[3:0]};
                        acc   <= G;
                        state <= S_AX2;
                    end
                    else begin
                        // combinational operations
                        result <= comb_result;
                        done   <= 1'b1;
                        state  <= S_IDLE;
                    end
                end

                // ------------------------------------------------
                // Polynomial Steps
                // ------------------------------------------------
                S_AX2: begin
                    acc   <= acc + A * x_reg * x_reg;
                    state <= S_BX;
                end

                S_BX: begin
                    acc   <= acc + B * x_reg;
                    state <= S_CY2;
                end

                S_CY2: begin
                    acc   <= acc + C * y_reg * y_reg;
                    state <= S_DY;
                end

                S_DY: begin
                    acc   <= acc + D * y_reg;
                    state <= S_EZ2;
                end

                S_EZ2: begin
                    acc   <= acc + E * z_reg * z_reg;
                    state <= S_FZ;
                end

                S_FZ: begin
                    acc   <= acc + F * z_reg;
                    result <= {{5{acc[18]}}, acc + F * z_reg};
                    done   <= 1'b1;
                    state  <= S_IDLE;
                end

                default: state <= S_IDLE;

            endcase
        end
    end

endmodule
