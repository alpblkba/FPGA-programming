# Project 3 — Zynq-Based ALU Design (Vivado)

**Date:** 19 January  
**Status:** Stage 1 completed

---

## Project Overview

This project targets the **PYNQ-Z2 (XC7Z020)** platform and uses **Vivado IP Integrator** to design a Zynq-based system that combines:

- The **Processing System (PS)** (ARM Cortex-A9)
- The **Programmable Logic (PL)** (custom Verilog logic)

The final goal of the project is to implement an **ALU in the PL**, control it from the PS, and observe results via GPIO.

The project is divided into multiple stages to ensure a clean, verifiable hardware design flow.

---

## Project Stages

### Stage 1 — Block Design (Completed on 19 January)
- Create and validate the Zynq block design
- Establish PS ↔ PL communication using AXI
- Instantiate and configure AXI GPIO
- Prepare clock and reset infrastructure
- Ensure synthesis and implementation are clean

### Stage 2 — Custom Logic (ALU) Integration
- Implement the ALU in Verilog (`task3.v`)
- Integrate the ALU into the block design
- Connect ALU inputs and outputs to AXI GPIO

### Stage 3 — Bitstream Generation and Deployment
- Generate the final bitstream
- Load the design onto the PYNQ-Z2 board

### Stage 4 — Software Control and Testing
- Control the ALU from the PS (e.g., via Python/Jupyter)
- Verify ALU operations using GPIO read/write

---

## Stage 1 — Block Design (Detailed)

### Objective

The objective of Stage 1 is to build a **stable and correct hardware infrastructure** that allows the Processing System to communicate with the Programmable Logic.

No custom computation logic is implemented in this stage.  
Stage 1 focuses entirely on **connectivity, clocks, resets, and AXI correctness**.

---

## Toolchain & Target

- **Vivado Version:** 2022.2  
- **Board:** PYNQ-Z2  
- **Device:** XC7Z020CLG400-1  
- **Target Language:** Verilog  
- **Top Module:** `design_1_wrapper`

---

## Block Design Components

### 1. Zynq Processing System (`processing_system7_0`)

- ARM Cortex-A9 Processing System
- DDR and FIXED_IO interfaces exposed externally
- **M_AXI_GP0** enabled for PS → PL communication
- **FCLK_CLK0** generated as the PL system clock
- **FCLK_RESET0_N** used as reset source

---

### 2. AXI Interconnect (`ps7_0_axi_periph`)

- Connects PS AXI master to PL AXI slaves
- Handles AXI protocol routing
- Clocked using `FCLK_CLK0`
- Reset using synchronized reset signals

---

### 3. Processor System Reset (`rst_ps7_0_100M`)

- Generates synchronized reset signals for PL
- Driven by PS clock and reset
- Provides:
  - `interconnect_aresetn`
  - `peripheral_aresetn`

---

### 4. AXI GPIO (`axi_gpio_0`)

- AXI4-Lite slave peripheral
- Provides memory-mapped GPIO access from PS
- Used as the PS ↔ PL data interface

GPIO configuration:
- `gpio_io_i[5:0]` — input to PL
- `gpio_io_o[5:0]` — output from PL

---

## Clock and Reset Architecture

### Clock

- **Clock Source:** `processing_system7_0/FCLK_CLK0`
- Drives:
  - AXI Interconnect
  - AXI GPIO
  - Reset controller

### Reset Flow

```
FCLK_RESET0_N
↓
rst_ps7_0_100M
↓
interconnect_aresetn
peripheral_aresetn
```

---

## AXI Connectivity

The AXI path is fully established and validated:

```
Processing System (M_AXI_GP0)
↓
AXI Interconnect
↓
AXI GPIO (S_AXI)
```

- All AXI clocks use `FCLK_CLK0`
- All AXI resets use `peripheral_aresetn`
- No manual AXI wiring required
- No connection automation needed (design already complete)

---

## External Interfaces

The following ports are exposed at the top level (`design_1_wrapper`):

- **DDR** — Zynq memory interface  
- **FIXED_IO** — Zynq fixed I/O  
- **arduino_a0_a5[5:0]** — GPIO input to PL  
- **gpio_io_o_0[5:0]** — GPIO output from PL  

---

## Validation and Build Status

- Block Design validated successfully
- Synthesis completed without errors
- Implementation completed successfully
- DDR timing warnings observed (expected for board presets; ignored for this lab)

---

## Stage 1 Result

As of **19 January**, Stage 1 is complete:

- PS ↔ PL communication is functional
- AXI infrastructure is stable
- GPIO interface is available for custom logic
- The design is ready for ALU integration in Stage 2

---

**Next step:** Implement and connect the ALU in the Programmable Logic.
