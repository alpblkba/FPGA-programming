# Task 2 – Switch-controlled LED State Machine (on a PYNQ-Z2)

This project implements a simple synchronous digital design on the PYNQ-Z2 FPGA board. The goal is to demonstrate how physical inputs (switches) can control internal logic and drive physical outputs (LEDs) using counters, basic state selection, and pulse-width modulation (PWM).

The design is written in Verilog and targets the Zynq-7000 (`xc7z020`) using Xilinx Vivado.

---

## High-level design
The system operates from a single **125 MHz system clock** and uses the two on-board switches (`sw[1:0]`) to directly select one of four operating modes. No additional button inputs are used.

Rather than using a separate state register, the switch values themselves act as the state selector. Each state activates a different section of logic that controls the four LEDs.

---

## State descriptions and behavior

### `00`: Static side LEDs
In this state, the design drives the LED outputs to a fixed pattern:
- The two outer LEDs are turned ON.
- The two center LEDs are turned OFF.

No counters or time-dependent logic are used in this state. The LEDs remain static as long as the switches stay in `00`.

---

### `01`: Global blinking
In this state, all four LEDs blink simultaneously.

A counter driven by the 125 MHz clock counts exactly 62,500,000 cycles, corresponding to 0.5 seconds. When this count is reached:
- A toggle signal is inverted.
- The counter resets.

The toggle signal determines whether the LEDs are fully on or fully off, resulting in a symmetric 0.5 s ON / 0.5 s OFF blinking pattern.

---

### `10`: Pattern sequencing
This state cycles through four predefined LED patterns.

A second counter runs for 125,000,000 clock cycles (1 second). Each time this counter expires:
- A 2-bit pattern index increments.
- The next LED pattern is selected.

The patterns are hardcoded and repeat cyclically, creating a visible sequence of different LED combinations at a one-second rate.

---

### `11`: Breathing (Pulse Width Modulation)
In this state, all LEDs perform a slow fade-in and fade-out effect, commonly referred to as “breathing”.

This behavior is implemented using:
- An 8-bit PWM counter running continuously at clock speed.
- An 8-bit duty-cycle register that determines brightness.
- A slow prescaler counter that updates the duty cycle at a much lower rate.

The duty cycle gradually increases from 0 to 255 and then decreases back to 0, reversing direction at the endpoints. The PWM comparison (`pwm_counter < pwm_duty`) determines whether the LEDs are ON or OFF for each PWM cycle, producing a smooth perceived brightness change.

All four LEDs are driven together with the same PWM signal.

---

## Timing and counters
All timing values are derived from the 125 MHz system clock. The required counter sizes and maximum values are calculated and documented directly in `task2.v`, including:
- 0.5-second blink timing
- 1-second pattern timing
- PWM resolution and update rate

---

## Assumptions
- LEDs are active-high.
- Switch inputs are stable and used combinationally.
- No external IP cores or processor logic are used.
- The design runs entirely in programmable logic (PL).

---

## Files
- `task2.v` – Top-level Verilog design containing all logic  
- `PYNQ-Z2.xdc` – Pin constraints for clock, switches, and LEDs  
- `README.md` – Project documentation  

---

## Target Platform
- Board: **PYNQ-Z2**
- FPGA: **xc7z020**
- Clock: **125 MHz**
- Toolchain: **Xilinx Vivado 2022.2**

---

## Usage
1. Create a new Vivado project targeting the PYNQ-Z2.
2. Add `task2.v` and `PYNQ-Z2.xdc` to the project.
3. Run synthesis and implementation.
4. Generate the bitstream and program the FPGA.
5. Use the on-board switches to change operating states.

---

## Purpose
This task serves as a compact demonstration of:
- Switch-controlled state behavior
- Clock-driven counters
- Simple sequencing logic
- PWM-based LED brightness control
- Physical FPGA I/O interaction
```
