`timescale 1ns / 1ps

module top_tb;

    // inputs
    reg clk;
    reg rst;
    reg en;
    reg [3:0] in0;
    reg [3:0] in1;
    reg [3:0] in2;

    // outputs (reference design)
    wire done_ref;
    wire signed [18:0] out_ref;
    
    // my redesign outputs (device under test)
    wire done_dut;
    wire signed [18:0] out_dut;

    // int storage
    reg signed [18:0] captured_val;
    reg signed [18:0] comparison_val;

    // calculated coefficients (visible in wave)
    reg signed [18:0] coeff_g;
    reg signed [18:0] coeff_a, coeff_b;
    reg signed [18:0] coeff_c, coeff_d;
    reg signed [18:0] coeff_e, coeff_f;

    // temp variables
    reg signed [18:0] val1, val2;

    // original reference design
    top ref_model (
        .clk(clk), .rst(rst), .en(en),
        .in0(in0), .in1(in1), .in2(in2),
        .done(done_ref), 
        .out(out_ref)
    );

    // design under test, my design
    task1_2 dut_model (
        .clk(clk), .rst(rst), .en(en),
        .in0(in0), .in1(in1), .in2(in2),
        .done(done_dut), 
        .out(out_dut)
    );

    // clock gen (10 ns)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // main sequence
    initial begin
        rst = 0; en = 0;
        in0 = 0; in1 = 0; in2 = 0;
        coeff_a = 0; coeff_b = 0;
        coeff_c = 0; coeff_d = 0;
        coeff_e = 0; coeff_f = 0;
        coeff_g = 0;
        captured_val = 0;
        val1 = 0; val2 = 0;

        // global reset
        #100
        rst = 1;
        en = 0;
        @(posedge clk);

        // g = F(0,0,0)
        run_test_case_and_capture(4'd0, 4'd0, 4'd0);
        coeff_g = captured_val; // should be 13

        // a and b (x coefficients): inputs x=1 and x=2 with y=z=0-
        run_test_case_and_capture(4'd1, 4'd0, 4'd0);
        val1 = captured_val;
        $display("val1 (F(1,0,0)) = %0d", val1);
        
        run_test_case_and_capture(4'd2, 4'd0, 4'd0);
        val2 = captured_val;
        $display("val2 (F(2,0,0)) = %0d", val2);
        
        // a + b + g 
        // 4a + 2b + g
        // math: 2a = (val2 - g) - 2*(val1 - g)

        // arithmetic shift for division by 2
        coeff_a = ((val2 - coeff_g) - (2 * (val1 - coeff_g))) >>> 1; // signed safe
        coeff_b = (val1 - coeff_g) - coeff_a;

        // c and d (y coefficients): inputs (0,1,0) and (0,2,0)
        run_test_case_and_capture(4'd0, 4'd1, 4'd0);
        @(posedge clk);
        val1 = captured_val;
        $display("val1 (F(0,1,0)) = %0d", val1);

        run_test_case_and_capture(4'd0, 4'd2, 4'd0);
        @(posedge clk);
        val2 = captured_val;
        $display("val1 (F(0,2,0)) = %0d", val1);

        // math: 2c = (val2 - g) - 2*(val1 - g)
        coeff_c = ((val2 - coeff_g) - (2 * (val1 - coeff_g))) >>> 1;
        coeff_d = (val1 - coeff_g) - coeff_c;
        
        

        // e and f (z coefficients): inputs (0,0,1) and (0,0,2)
        run_test_case_and_capture(4'd0, 4'd0, 4'd1);
        @(posedge clk);
        val1 = captured_val;
        $display("val1 (F(0,0,1)) = %0d", val1);


        run_test_case_and_capture(4'd0, 4'd0, 4'd2);
        @(posedge clk);
        val2 = captured_val;
        $display("val1 (F(0,0,2)) = %0d", val1);
        
        

        // math: 2e = (val2 - g) - 2*(val1 - g)
        coeff_e = ((val2 - coeff_g) - (2 * (val1 - coeff_g))) >>> 1;
        coeff_f = (val1 - coeff_g) - coeff_e;

        $display("TIME = %0t", $time);
        $display("extracted function:");
        $display("F = %0dx^2 + %0dx + %0dy^2 + %0dy + %0dz^2 + %0dz + %0d",
                 coeff_a, coeff_b, coeff_c, coeff_d, coeff_e, coeff_f, coeff_g);

        // 5x^2 + 8x -4y^2 + 3y + 6z^2 -2z + 13");
        
        
        
        //verification:
        $display("STARTING SIDE-BY-SIDE VERIFICATION");
        rst = 0; en = 0; in0 = 0; in1 = 0; in2 = 0;
        
        // reset
        rst = 1; 
        #20;
        
        // test case 1: zero inputs
        @(posedge clk);
        run_compare(0, 0, 0);

        // test case 2: random binary
        @(posedge clk);
        run_compare(1, 0, 0);
       
        // test case 3: random 2 bit decimals
        @(posedge clk);
        run_compare(3, 2, 1);

        // test case 4: random 3 bit decimals
        @(posedge clk);
        run_compare(2, 5, 3);

        $display("ALL CHECKS PASSED!");
        $finish;

    end

    // assert inputs when en=0
    // tell the chip go, en=1 on a posedge clk
    // keep inputs stable while waiting for done
    // when done capture out, immediately deassert en
    task run_test_case_and_capture;
        input [3:0] x;
        input [3:0] y;
        input [3:0] z;
        begin
            en = 0;
            @(posedge clk);
            in0 = x;
            in1 = y;
            in2 = z;
    
            $display("[%0t] APPLY inputs x=%0d y=%0d z=%0d", $time, x, y, z);
    
            @(posedge clk);
            en = 1;
            @(posedge done_ref); 
            captured_val = out_ref;
    
            $display("[%0t] DONE  out=%0d", $time, captured_val);
    
            en = 0;
            @(posedge clk);
        end
    endtask
    
    // comparison of both
    // this runs after the function extracted
    task run_compare;
        input [3:0] x; input [3:0] y; input [3:0] z;
        begin
            en = 0;
            in0 = x; in1 = y; in2 = z;
            $display("[%0t] comparing with inputs x=%0d y=%0d z=%0d", $time, x, y, z);

            // init
            @(posedge clk);            
            en = 1;

            // wait for both finish
            wait(done_ref == 1 && done_dut == 1);
            $display("[%0t] done in both ref and dut, out of ref is=%0d", $time, out_ref);
            en = 0;
            comparison_val = out_ref;
            // compare
            if ({1'b0, out_ref} !== {1'b0, out_dut}) begin
                $display("ERROR MISMATCH at inputs (%d, %d, %d)",x,y,z);
                $display("  expected (netlist): %d", out_ref);
                $display("  actual   (design):  %d", out_dut);
                $stop; // pause sim
            end else begin
                $display("MATCH for the inputs(%d,%d,%d)",x,y,z);
            end
        end
    endtask

endmodule
