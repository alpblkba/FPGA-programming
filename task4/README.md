# FPGA sequence detector (Task 4)

This repository contains a hardware-software co-design project for the PYNQ-Z2 board. The project consists of a hardware sequence detector acting as a lock, and a Python script that deduces the secret sequence over an AXI bridge.

## System architecture

The project is divided into Programmable Logic (RTL) and Processing System (Python) domains.

### RTL implementation (Verilog)
The hardware operates as a state-driven length oracle. 
* **Input Conditioning:** A 20-bit counter acts as a digital debouncer for the physical trigger switch (`sw1`), requiring the signal to remain stable for 1,000,000 clock cycles (~8ms) before registering an edge. 
* **Data Storage:** Uses two 8-bit shift registers: `secret_reg` holds the target sequence programmed via physical switches, and `guess_reg` holds the incoming bitstream from the processing system.
* **Match Logic:** A combinational `for` loop applies a sliding bitmask to compare the suffix of `guess_reg` against the prefix of `secret_reg`. It calculates the longest continuous match (0 to 8 bits).
* **Feedback System:** The calculated match count is routed continuously to `ps_gpio_out`. A 28-bit timer manages a 1-second red RGB LED flash for incorrect bit inputs, while retaining the partial sequence match.

### Software implementation (Python/Jupyter)
The software side acts as the attacker, exploiting the hardware's match count feedback.
* **AXI Interface:** Uses `pynq.Overlay` to map memory and drive the `axi_gpio` blocks, transmitting data and clock edges serially.
* **Algorithmic Deduction:** Implements an adaptive brute-force algorithm. Instead of a standard $O(2^n)$ search, it tests a single bit ('0') and reads the immediate integer feedback. If the match count does not increment, it deduces the bit is '1'. 
* **State Restoration:** Because the FPGA utilizes a physical shift register, the Python script dynamically flushes and restores the hardware memory state after incorrect guesses by re-transmitting the known correct prefix.

## Usage

1. Load `task4.bit` and `task4.hwh` onto the PYNQ-Z2.
2. Press `BTN1` to enter set mode (indicated by Blue LEDs).
3. Use `SW0` (bit value) and `SW1` (trigger) to input an 8-bit sequence.
4. Execute the Jupyter Notebook script to initiate the side-channel attack and unlock the sequence (Green LEDs).

## Requirements

* PYNQ-Z2 development Bbard
* Vivado
* PYNQ environment with Jupyter Notebook