`timescale 1ns / 1ps

module task4 (
    input clk,
    input reset_btn,    // Button 0 (Global Reset)
    input set_btn,      // Button 1 (Trigger to enter New Secret)
    input sw0,          // SW0: Secret bit value
    input sw1,          // SW1: Secret bit trigger
    input [1:0] ps_gpio_in, 
    
    output reg [3:0] leds,       
    output reg [2:0] rgb_led1,   
    output reg [2:0] rgb_led2,   
    output [3:0] ps_gpio_out     
);

    reg [7:0] secret_reg;
    reg [7:0] guess_reg;
    reg [3:0] secret_count;
    reg [3:0] current_match;
    
    // ========================================================================
    // THE FIX: Digital Debouncer for SW1
    // ========================================================================
    reg [19:0] debounce_cnt;
    reg sw1_clean;
    
    always @(posedge clk) begin
        if (sw1 != sw1_clean) begin
            debounce_cnt <= debounce_cnt + 1;
            // Count to ~1,000,000 cycles (8ms) before accepting the new switch state
            if (debounce_cnt == 20'd1000000) begin 
                sw1_clean <= sw1;
                debounce_cnt <= 0;
            end
        end else begin
            debounce_cnt <= 0;
        end
    end

    // Use the CLEAN signal for our edge detection
    reg sw1_d, ps_trig_d;
    wire sw1_edge   = sw1_clean & ~sw1_d;
    wire ps_edge    = ps_gpio_in[1] & ~ps_trig_d;

    // Timer for Red Flash 
    reg [27:0] flash_timer;
    reg mismatch_pulse;

    always @(posedge clk) begin
        sw1_d <= sw1_clean; // Updated to use clean signal
        ps_trig_d <= ps_gpio_in[1];
        
        if (reset_btn) begin
            secret_reg      <= 8'b0;
            guess_reg       <= 8'b0;
            secret_count    <= 0;
            mismatch_pulse  <= 0;
            flash_timer     <= 0;
        end else begin
            if (set_btn) begin
                secret_count <= 0;
            end
            else if (secret_count < 8) begin
                if (sw1_edge) begin
                    secret_reg   <= {secret_reg[6:0], sw0};
                    secret_count <= secret_count + 1;
                end
            end
            else if (secret_count == 8 && ps_edge) begin
                guess_reg <= {guess_reg[6:0], ps_gpio_in[0]};
                
                if (ps_gpio_in[0] != secret_reg[7 - current_match]) begin
                    mismatch_pulse <= 1;
                    flash_timer    <= 0;
                end
            end
            
            if (mismatch_pulse) begin
                if (flash_timer < 125000000) begin 
                    flash_timer <= flash_timer + 1;
                end else begin
                    flash_timer     <= 0;
                    mismatch_pulse  <= 0;
                end
            end
        end
    end

    // Combinational Match Logic
    integer j;
    reg [7:0] mask;
    always @(*) begin
        current_match = 0;
        mask = 8'b00000001; 
        
        for (j = 1; j <= 8; j = j + 1) begin
            if ((guess_reg & mask) == (secret_reg >> (8 - j))) begin
                current_match = j;
            end
            mask = (mask << 1) | 8'b00000001;
        end
    end

    // Output Assignments 
    assign ps_gpio_out = current_match;
    
    always @(*) begin
        leds = secret_count;
        rgb_led1 = 3'b000;
        rgb_led2 = 3'b000;
        
        if (secret_count < 8) begin
            rgb_led1 = 3'b001; // Blue
            rgb_led2 = 3'b001;
        end else if (current_match == 8) begin
            rgb_led1 = 3'b010; // Green
            rgb_led2 = 3'b010;
            leds     = 4'b1111; 
        end else if (mismatch_pulse) begin
            rgb_led1 = 3'b100; // Red Flash
            rgb_led2 = 3'b100;
            leds     = 4'b0000; 
        end else begin
            leds = current_match; 
        end
    end

endmodule