`timescale 1ns / 1ps


module task3 (
    input  wire [2:0]  opcode, // From GPIO EMIO [51:49]
    input  wire [7:0]  in2,    // From GPIO EMIO [23:16] (acts as 'x' for Op 7)
    input  wire [7:0]  in1,    // From GPIO EMIO [15:8]  (acts as 'y' for Op 7)
    input  wire [7:0]  in0,    // From GPIO EMIO [7:0]   (acts as 'z' for Op 7)
    output reg  [23:0] result, // To GPIO EMIO [47:24]
    output wire [0:0]  done    // To GPIO EMIO [48]
);

    // The 'done' signal is high when the module is powered and ready [cite: 58]
    assign done = 1'b1;

    // Internal signed wires for the Operation 7 Polynomial calculation
    // Inputs x, y, z are treated as 4-bit unsigned values from the lower nibbles
    wire signed [15:0] x = {12'b0, in2[3:0]};
    wire signed [15:0] y = {12'b0, in1[3:0]};
    wire signed [15:0] z = {12'b0, in0[3:0]};

    always @(*) begin
        case (opcode)
            3'b000: result = in1 + in2;                // 0: Add 
            3'b001: result = in2 - in1;                // 1: Sub 
            3'b010: result = in1 * in2;                // 2: Mult 
            3'b011: result = in2 >> in1;               // 3: Shift Right 
            3'b100: result = in1 * in1;                // 4: Square 
            3'b101: result = in1 * in1 * in1;          // 5: Cube 
            3'b110: result = in1 + in2 + in0;          // 6: Triple Add 
            
            // 7: F(x,y,z) = 5x^2 + 8x - 4y^2 + 3y + 6z^2 - 2z + 13
            3'b111: begin
                result = (5*x*x) + (8*x) - (4*y*y) + (3*y) + (6*z*z) - (2*z) + 13;
            end
            
            default: result = 24'b0;
        endcase
    end

endmodule