`timescale 1ns / 1ps

module task1_2 (
    input clk,
    input rst,
    input en,
    input [3:0] in0, // x
    input [3:0] in1, // y
    input [3:0] in2, // z
    output reg done,
    output reg signed [18:0] out
);

    // coefficinets: 5x^2 + 8x - 4y^2 + 3y + 6z^2 - 2z + 13
    // a-g are signed 5-bit constant values
    localparam signed [4:0] coeff_a = 5'sd5;  
    localparam signed [4:0] coeff_b = 5'sd8;  
    localparam signed [4:0] coeff_c = -5'sd4; 
    localparam signed [4:0] coeff_d = 5'sd3;  
    localparam signed [4:0] coeff_e = 5'sd6;  
    localparam signed [4:0] coeff_f = -5'sd2; 
    localparam signed [4:0] coeff_g = 5'sd13; 

    // int
    reg [2:0] state; // 3-bit state machine
    reg signed [18:0] accumulator; // holds the running total

    // helper signals for safe unsigned-to-signed conversion
    wire signed [5:0] x_signed = {2'b00, in0};
    wire signed [5:0] y_signed = {2'b00, in1};
    wire signed [5:0] z_signed = {2'b00, in2};

    // state def
    // ax2 + bx + cy2 + dy + ez2 + fz + g
    localparam S_LOAD_G   = 3'd0;
    localparam S_CALC_AX2 = 3'd1;
    localparam S_CALC_BX  = 3'd2;
    localparam S_CALC_CY2 = 3'd3;
    localparam S_CALC_DY  = 3'd4;
    localparam S_CALC_EZ2 = 3'd5;
    localparam S_CALC_FZ  = 3'd6;
    localparam S_DONE     = 3'd7;

    always @(posedge clk or negedge rst) begin
        // async reset (active low)
        if (!rst) begin
            state       <= S_LOAD_G;
            accumulator <= 0;
            done        <= 0;
            out         <= 0;
        end 
        else begin
            if (en) begin
                case (state)
                    // cycle 0: init with constant G
                    S_LOAD_G: begin
                        accumulator <= coeff_g;
                        done        <= 0;
                        state       <= S_CALC_AX2;
                    end

                    // cycle 1: add ax^2
                    S_CALC_AX2: begin
                        accumulator <= accumulator + (coeff_a * x_signed * x_signed);
                        state       <= S_CALC_BX;
                    end

                    // cycle 2: add bx
                    S_CALC_BX: begin
                        accumulator <= accumulator + (coeff_b * x_signed);
                        state       <= S_CALC_CY2;
                    end

                    // cycle 3: add cy^2
                    S_CALC_CY2: begin
                        accumulator <= accumulator + (coeff_c * y_signed * y_signed);
                        state       <= S_CALC_DY;
                    end

                    // cycle 4: add dy
                    S_CALC_DY: begin
                        accumulator <= accumulator + (coeff_d * y_signed);
                        state       <= S_CALC_EZ2;
                    end

                    // cycle 5: add ez^2
                    S_CALC_EZ2: begin
                        accumulator <= accumulator + (coeff_e * z_signed * z_signed);
                        state       <= S_CALC_FZ;
                    end

                    // cycle 6: add fz
                    S_CALC_FZ: begin
                        accumulator <= accumulator + (coeff_f * z_signed);
                        state       <= S_DONE;
                    end

                    // cycle 7: out
                    S_DONE: begin
                        out   <= accumulator;
                        done  <= 1;
                        state <= S_LOAD_G; // loop
                    end
                endcase
            end
            else begin
                // if en = 0
                // reset state to idle 
                // ready for the next rising edge of en
                state <= S_LOAD_G;
                done  <= 0;
            end
        end
    end

endmodule