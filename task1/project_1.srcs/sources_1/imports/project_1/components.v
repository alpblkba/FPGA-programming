`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2025 02:46:36 PM
// Design Name: 
// Module Name: DFFNRX1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DFFNRX1(D, CP, RST_N, Q, Q_bar);
input D, CP, RST_N;
output reg Q, Q_bar;

always @(posedge CP or negedge RST_N) begin
    if (!RST_N) begin
        Q <= 0;
        Q_bar <= 1;
    end else begin
        Q <= D;
        Q_bar <= ~D;
    end
end

endmodule

module NAND2(IN1, IN2, OUT);
input IN1, IN2;
output wire OUT;

assign OUT = ~(IN1 & IN2);

endmodule

module AND2(IN1, IN2, OUT);
input IN1, IN2;
output wire OUT;

assign OUT = IN1 & IN2;

endmodule

module NOR2(IN1, IN2, OUT);
input IN1, IN2;
output wire OUT;

assign OUT = ~(IN1 | IN2);

endmodule

module OR2(IN1, IN2, OUT);
input IN1, IN2;
output wire OUT;

assign OUT = IN1 | IN2;

endmodule

module INVX1(IN, OUT);
input IN;
output wire OUT;

assign OUT = ~IN;

endmodule
