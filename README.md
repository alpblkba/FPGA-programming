# FPGA Programming - CDNC - ITEC - KIT

## Task 1: Digital Design and Simulation
- Analyze a gate-level netlist to determine a secret algebraic function.
- Reproduce the module in Verilog HDL or VHDL.
- Simulate and verify the design using a testbench.

## Task 2: Physical Interaction
- Design a finite state machine with multiple states.
- Control on-board LEDs using buttons and switches.
- Implement simple LED patterns such as blinking or PWM effects.
- Assume a 125 MHz system clock.

## Task 3: Acceleration with SoC
- Integrate a simple ALU into a Zynq Processing System.
- Create a Vivado block design and generate a bitstream.
- Communicate with the hardware from the Processing System.
- Test the design using a Jupyter Notebook.

## Task 4: Interaction with SoC – Sequence Detector
- Implement an 8-bit sequence detector acting as a simple code lock.
- Set the secret sequence using physical buttons and switches.
- Indicate progress and status using LEDs and RGB LEDs.
- Guess the sequence through PS GPIO inputs.
- Display the guessed bits and number of correct bits in a Jupyter Notebook.
- Unlock the system when the full sequence is correctly entered.
