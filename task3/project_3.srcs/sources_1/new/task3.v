module task3(
    input  [2:0] opcode,
    input  [3:0] in1,
    input  [3:0] in2,
    output reg [3:0] result
);

always @(*) begin
    case(opcode)
        3'd0: result = in1 + in2;
        3'd1: result = in1 - in2;
        3'd2: result = in1 * in2;
        3'd3: result = in1 << 1;
        3'd4: result = in1 >> 1;
        3'd5: result = in1 * in1;
        3'd6: result = in1 * in1 * in1;
        3'd7: result = (in1 ^ in2); // F(x,y,z)
        default: result = 4'd0;
    endcase
end

endmodule
