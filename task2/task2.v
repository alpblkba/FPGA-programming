`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2026 07:18:01 AM
// Design Name: 
// Module Name: task2
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

/*
===========================================================
clk: 125 mhz

switches:
  sw[1:0] = 00, 01, 10, 11

LEDs:
  led[3:0]

===========================================================

CLOCK CALCULATIONS

sys clock = 125 MHz
clock period = 1 / 125e6 = 8 ns

-----------------------------------------------------------
1) 0.5 second blink timer

required cycles:
  0.5 s × 125,000,000 Hz = 62,500,000 cycles

max counter value:
  62,500,000 - 1

bits required:
  log2(62,500,000) ≈ 25.9 → 26 bits

-----------------------------------------------------------
2) 1 second pattern timer

required cycles:
  1 s × 125,000,000 Hz = 125,000,000 cycles

bits required:
  log2(125,000,000) ≈ 26.9 → 27 bits

-----------------------------------------------------------
3) PWM resolution

we use an 8-bit PWM:
  2^8 = 256 steps

PWM frequency:
  125 MHz / 256 ≈ 488 kHz (more than enough for LEDs)

===========================================================
*/

module task2 (
    input  wire        clk,        // 125 MHz system clk
    input  wire [1:0]  sw,         // 2 switches
    output reg  [3:0]  led         // 4 LEDs
);

    // STATE DEFINITIONS (mapped directly from switches)
    localparam STATE_SIDE_ON     = 2'b00;
    localparam STATE_BLINK_ALL   = 2'b01;
    localparam STATE_PATTERNS    = 2'b10;
    localparam STATE_BREATHING   = 2'b11;

    wire [1:0] state = sw;

    // 0.5 sec blink counter
    reg [25:0] blink_counter = 0;
    reg        blink_toggle  = 0;

    always @(posedge clk) begin
        if (blink_counter == 26'd62_499_999) begin
            blink_counter <= 0;
            blink_toggle  <= ~blink_toggle;
        end else begin
            blink_counter <= blink_counter + 1;
        end
    end

    // 1 sec pattern counter
    reg [26:0] pattern_counter = 0;
    reg [1:0]  pattern_index   = 0;

    always @(posedge clk) begin
        if (pattern_counter == 27'd124_999_999) begin
            pattern_counter <= 0;
            pattern_index   <= pattern_index + 1;
        end else begin
            pattern_counter <= pattern_counter + 1;
        end
    end

    // pwm breathing generator
    reg [7:0]  pwm_counter = 0;
    reg [7:0]  pwm_duty    = 0;
    reg        pwm_dir     = 0;
    reg [19:0] slow_counter = 0; // prescaler to slow down the fade speed
    
    always @(posedge clk) begin
        pwm_counter  <= pwm_counter + 1;
        slow_counter <= slow_counter + 1;
    
        // slow_counter updates the duty cycle every ~10ms (at 100mhz)
        // 2^20 bits ≈ 1,048,576 cycles. 100mhz / 1,048,576 ≈ 95hz update rate.
        if (slow_counter == 0) begin 
            if (!pwm_dir) begin
                pwm_duty <= pwm_duty + 1;
                if (pwm_duty == 8'd255) pwm_dir <= 1;
            end else begin
                pwm_duty <= pwm_duty - 1;
                if (pwm_duty == 8'd1) pwm_dir <= 0;
            end
        end
    end
    
    wire pwm_signal = (pwm_counter < pwm_duty);

    // led output
    always @(*) begin
        case (state)

            // 00: side LEDs on, center off
            // LED order: [3][2][1][0]
            STATE_SIDE_ON: begin
                led = 4'b1001;
            end

            // 01: all LEDs blinking (0.5s on / off)
            STATE_BLINK_ALL: begin
                led = blink_toggle ? 4'b1111 : 4'b0000;
            end

            // 10: pattern blinking (4 patterns)
            STATE_PATTERNS: begin
                case (pattern_index)
                    2'b00: led = 4'b1010;
                    2'b01: led = 4'b0101;
                    2'b10: led = 4'b1100;
                    2'b11: led = 4'b0011;
                endcase
            end

            // 11: breathing using pwm
            STATE_BREATHING: begin
                led = {4{pwm_signal}};
            end

            default: led = 4'b0000;
        endcase
    end

endmodule
