`timescale 1ns / 1ps


module task3 (
    input  wire [2:0]  opcode, //[51:49]
    input  wire [7:0]  in2,    //[23:16] 
    input  wire [7:0]  in1,    //[15:8]  
    input  wire [7:0]  in0,    //[7:0]   
    output reg  [23:0] result, //[47:24]
    output wire [0:0]  done    //[48]
);

    assign done = 1'b1;

    // internal signed wires for opcode 7 polynomial calc
    wire signed [15:0] x = $signed(in2[3:0]);    
    wire signed [15:0] y = $signed(in1[3:0]);
    wire signed [15:0] z = $signed(in0[3:0]);

    always @(*) begin
        case (opcode)
            3'b000: result = $signed(in1 + in2);                // 0: add 
            3'b001: result = $signed(in2 - in1);                // 1: sub 
            3'b010: result = $signed(in1 * in2);                // 2: mul 
            3'b011: result = $signed(in2 >> in1);               // 3: rshft 
            3'b100: result = $signed(in1 * in1);                // 4: sqr 
            3'b101: result = $signed(in1 * in1 * in1);          // 5: cube 
            3'b110: result = $signed(in1 + in2 + in0);          // 6: 3add 
            
            // 7: F(x,y,z) = 5x^2 + 8x - 4y^2 + 3y + 6z^2 - 2z + 13
            3'b111: begin
                result = $signed(5*x*x) + $signed(8*x) - $signed(4*y*y) + $signed(3*y) + $signed(6*z*z) - $signed(2*z) + 13;
            end
            
            default: result = 24'b0;
        endcase
    end

endmodule