module sequence_detector (
    input clk,
    input reset_btn,    // Button 0
    input set_btn,      // Button 1
    input sw0,          // Secret bit value
    input sw1,          // Secret bit trigger
    input [1:0] ps_gpio_in, // [1]=Trigger, [0]=Data from Jupyter
    
    output reg [3:0] leds,       // 4 LEDs for bit count
    output reg [2:0] rgb_led1,   // {R,G,B}
    output reg [2:0] rgb_led2,   // {R,G,B}
    output [3:0] ps_gpio_out     // Match count back to Jupyter
);

    // Internal Registers
    reg [7:0] secret_reg;
    reg [7:0] guess_reg;
    reg [3:0] secret_count;
    reg [3:0] current_match;
    
    // Edge Detection for Triggers
    reg sw1_d, ps_trig_d;
    wire sw1_edge   = sw1 & ~sw1_d;
    wire ps_edge    = ps_gpio_in[1] & ~ps_trig_d;

    // Timer for Red Flash (1 second @ 125MHz = 125,000,000 cycles)
    reg [27:0] flash_timer;
    reg mismatch_pulse;

    always @(posedge clk) begin
        sw1_d <= sw1;
        ps_trig_d <= ps_gpio_in[1];
        
        if (reset_btn) begin
            secret_reg   <= 8'b0;
            guess_reg    <= 8'b0;
            secret_count <= 0;
            mismatch_pulse <= 0;
        end else begin
            
            // --- 1. SETTING THE SECRET ---
            if (set_btn && secret_count < 8) begin
                if (sw1_edge) begin
                    secret_reg <= {secret_reg[6:0], sw0};
                    secret_count <= secret_count + 1;
                end
            end

            // --- 2. GUESSING THE SECRET (Hacker Mode) ---
            if (secret_count == 8 && ps_edge) begin
                // Shift in the new bit from PS
                guess_reg <= {guess_reg[6:0], ps_gpio_in[0]};
                
                // Trigger logic for matching happens below in combinational block
                // But we check for "Incorrect Bit" to start the 1s Red Flash
                // If current_match doesn't increase or is 0, flash Red
            end
            
            // --- 3. RED LED TIMER ---
            if (mismatch_pulse) begin
                if (flash_timer < 125000000) flash_timer <= flash_timer + 1;
                else begin
                    flash_timer <= 0;
                    mismatch_pulse <= 0;
                end
            end
        end
    end

    // --- 4. COMBINATIONAL MATCH LOGIC ---
    // This finds the longest prefix of secret_reg that matches the suffix of guess_reg
    integer i;
    always @(*) begin
        current_match = 0;
        // Check 8-bit match, then 7, then 6...
        for (i = 1; i <= 8; i = i + 1) begin
            if (guess_reg[i-1:0] == secret_reg[7:8-i]) begin
                current_match = i;
            end
        end
    end

    // --- 5. OUTPUT ASSIGNMENTS ---
    assign ps_gpio_out = current_match;
    
    always @(*) begin
        // Default: All OFF
        leds = secret_count;
        rgb_led1 = 3'b000;
        rgb_led2 = 3'b000;
        
        if (secret_count < 8) begin
            rgb_led1 = 3'b001; // Blue while setting
            rgb_led2 = 3'b001;
        end else if (current_match == 8) begin
            rgb_led1 = 3'b010; // Green (Unlocked)
            rgb_led2 = 3'b010;
        end else if (mismatch_pulse) begin
            rgb_led1 = 3'b100; // Red Flash
            rgb_led2 = 3'b100;
        end
    end

endmodule