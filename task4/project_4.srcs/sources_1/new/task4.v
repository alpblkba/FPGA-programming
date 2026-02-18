`timescale 1ns / 1ps

// ============================================================================
// Module: task4 (Sequence Detector SoC)
// Description: Implements a "Setting" mode to record a secret pattern, and a 
//              "Guessing" mode to validate a stream of bits against that secret.
//              Features "Longest Prefix Match" recovery logic.
// ============================================================================

module task4 (
    // --- Clock & Reset ---
    input clk,              // System Clock (125 MHz from Zynq FCLK)
    input reset_btn,        // BTN0: Hard Reset (Panic Button) - Wipes everything
    
    // --- Setting Interface (Physical) ---
    input set_btn,          // BTN1: "New Game" Button. Clears secret count to 0.
    input sw0,              // SW0: The bit value (0 or 1) you want to set.
    input sw1,              // SW1: The "Enter" trigger for setting a bit.

    // --- Hacker Interface (Python/AXI) ---
    // [1] = Trigger: Python toggles this High->Low to say "I sent a bit"
    // [0] = Data: The actual bit (0 or 1) Python is guessing
    input [1:0] ps_gpio_in, 
    
    // --- Visual Feedback ---
    output reg [3:0] leds,       // 4 Standard LEDs: Shows how many bits are matched
    output reg [2:0] rgb_led1,   // RGB 1 (LD4): Blue=Setting, Green=Unlock, Red=Fail
    output reg [2:0] rgb_led2,   // RGB 2 (LD5): Same color mirror
    
    // --- Status Output ---
    output [3:0] ps_gpio_out     // Sends the current match count (0-8) back to Python
);

    // ========================================================================
    // Internal Registers (The "State" of the Machine)
    // ========================================================================
    reg [7:0] secret_reg;    // Stores the correct password (e.g., 10110011)
    reg [7:0] guess_reg;     // Stores the last 8 bits the hacker entered
    reg [3:0] secret_count;  // Counts how many bits the owner has set (0 to 8)
    reg [3:0] current_match; // Calculated value: How many bits currently match?
    
    // ========================================================================
    // Edge Detection Logic (The "Debouncer")
    // ========================================================================
    // We need to detect the EXACT moment a button/signal goes from 0 to 1.
    // Otherwise, the fast clock would register 1000 presses for 1 finger tap.
    reg sw1_d, ps_trig_d;
    
    // Logic: Signal is HIGH now AND was LOW previous cycle.
    wire sw1_edge   = sw1 & ~sw1_d;             // Physical "Enter"
    wire ps_edge    = ps_gpio_in[1] & ~ps_trig_d; // Python "Enter"

    // ========================================================================
    // Red Flash Timer Logic
    // ========================================================================
    // To flash LED for 1 second, we simply count clock cycles.
    // 125 MHz clock = 125,000,000 cycles per second.
    reg [27:0] flash_timer;  // Large enough register to hold 125 million
    reg mismatch_pulse;      // Flag: "The user just made a mistake!"

    // ========================================================================
    // Synchronous Logic (Updates on every Clock Edge)
    // ========================================================================
    always @(posedge clk) begin
        // 1. Update history for edge detectors
        sw1_d <= sw1;
        ps_trig_d <= ps_gpio_in[1];
        
        // 2. GLOBAL RESET (BTN0)
        if (reset_btn) begin
            secret_reg      <= 8'b0;
            guess_reg       <= 8'b0;
            secret_count    <= 0;
            mismatch_pulse  <= 0;
            flash_timer     <= 0;
        end else begin
            
            // 3. SET MODE TRIGGER (BTN1)
            // If user hits Set, we restart the "Secret Entry" process.
            // Note: We do NOT clear guess_reg here, only the secret_count.
            if (set_btn) begin
                secret_count <= 0;
            end
            
            // 4. MODE A: SETTING THE SECRET
            // Logic: If we haven't entered 8 bits yet, we are in "Setting Mode".
            else if (secret_count < 8) begin
                if (sw1_edge) begin
                    // Shift in the new bit from physical switch SW0
                    secret_reg   <= {secret_reg[6:0], sw0}; 
                    secret_count <= secret_count + 1;
                end
            end

            // 5. MODE B: HACKER MODE
            // Logic: Only active if Secret is FULL (8 bits) AND Python sends a trigger.
            else if (secret_count == 8 && ps_edge) begin
                // Shift in the new bit from Python (GPIO[0])
                guess_reg <= {guess_reg[6:0], ps_gpio_in[0]};
                
                // --- THE ORACLE CHECK (RED FLASH TRIGGER) ---
                // We check: Did the bit JUST entered match the bit we NEEDED?
                // logic: ps_gpio_in[0] is the new bit.
                //        secret_reg[7 - current_match] is the next specific bit needed.
                // If they don't match -> Trigger Red Flash.
                if (ps_gpio_in[0] != secret_reg[7 - current_match]) begin
                    mismatch_pulse <= 1;
                    flash_timer    <= 0; // Reset timer to 0 to start counting
                end
            end
            
            // 6. TIMER COUNTDOWN
            // If the mismatch flag is ON, count up to 125,000,000 (1 sec).
            if (mismatch_pulse) begin
                if (flash_timer < 125000000) begin
                    flash_timer <= flash_timer + 1;
                end else begin
                    // Timer done: Turn off the red flash flag.
                    flash_timer     <= 0;
                    mismatch_pulse  <= 0;
                end
            end
        end
    end

    // ========================================================================
    // Combinational Logic: The "Smart Matcher"
    // ========================================================================
    // This block runs continuously (not clocked). It recalculates the match count
    // instantly whenever guess_reg or secret_reg changes.
    //
    // Goal: Find the Longest Prefix of 'Secret' that matches the Suffix of 'Guess'.
    integer j;
    reg [7:0] mask;
    
    always @(*) begin
        current_match = 0;
        mask = 8'b00000001; // Start with a 1-bit mask
        
        // Loop from 1 to 8 to check all possible overlap lengths
        for (j = 1; j <= 8; j = j + 1) begin
            // 1. (guess_reg & mask): Take the last 'j' bits of the guess.
            // 2. (secret_reg >> (8 - j)): Move the first 'j' bits of secret to the end.
            // 3. Compare them.
            if ((guess_reg & mask) == (secret_reg >> (8 - j))) begin
                current_match = j; // If they match, record the length.
                // Since 'j' goes up, this naturally finds the LARGEST 'j'.
            end
            
            // Shift mask left and add 1 (e.g., 001 -> 011 -> 111)
            mask = (mask << 1) | 8'b00000001;
        end
    end

    // ========================================================================
    // Output Assignments (Visuals)
    // ========================================================================
    // Send the match count to Python
    assign ps_gpio_out = current_match;
    
    always @(*) begin
        // Default state: LEDs show secret count setup progress
        leds = secret_count;
        rgb_led1 = 3'b000;
        rgb_led2 = 3'b000;
        
        // PRIORITY 1: SETTING MODE
        if (secret_count < 8) begin
            rgb_led1 = 3'b001; // Blue
            rgb_led2 = 3'b001;
        end 
        // PRIORITY 2: UNLOCKED (Success!)
        else if (current_match == 8) begin
            rgb_led1 = 3'b010; // Green
            rgb_led2 = 3'b010;
            leds     = 4'b1111; // Turn on all 4 LEDs for celebration
        end 
        // PRIORITY 3: INCORRECT GUESS (Red Flash)
        else if (mismatch_pulse) begin
            rgb_led1 = 3'b100; // Red
            rgb_led2 = 3'b100;
            leds     = 4'b0000; // Turn off count LEDs to emphasize the error
        end 
        // PRIORITY 4: NORMAL GUESSING
        else begin
            leds = current_match; // Show current progress (0-7)
        end
    end

endmodule