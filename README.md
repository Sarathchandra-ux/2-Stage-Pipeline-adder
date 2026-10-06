# 2-Stage-Pipeline-adder
Verilog implementation of a 2-stage pipelined adder for high-throughput digital design.


## Overview

This project implements a **2-stage pipelined adder** using **Verilog HDL**. The design demonstrates the fundamentals of RTL pipelining, register-based stage separation, and improved throughput in digital hardware design.

## Features

* 2-stage pipelined architecture
* Designed using Verilog HDL
* Synchronous operation with clock and reset
* Registered intermediate results
* Demonstrates improved throughput using pipelining
* Suitable for RTL/VLSI design practice

## Architecture

The addition operation is divided into two pipeline stages:

**Stage 1:**
The input operands are registered and the first part of the addition is performed.

**Stage 2:**
The intermediate result is registered and the final addition result is generated.

```text
Input A ──► [ Pipeline Stage 1 ] ──► [ Pipeline Stage 2 ] ──► Output
Input B ──► [     Addition      ] ──► [ Final Result     ] ──►
                    │                       │
                   Reg                     Reg
```

## Tools Used

* **Verilog HDL**
* **AMD/Xilinx Vivado**
* **XSim** for simulation

## Files

```text
├── 2_stage_pipelined_adder.v
├── 2_stage_pipelined_adder_tb.v
└── README.md
```

## Simulation

The testbench provides different input combinations and verifies the pipelined output with respect to the clock cycles.

Since the design is pipelined, the output appears after the corresponding **pipeline latency** rather than immediately after the inputs are applied.

## Concepts Demonstrated

* RTL Design
* Pipelining
* Sequential Logic
* Registers
* Clocked Design
* Throughput vs. Latency
* Verilog HDL
* Testbench and Simulation

## Future Improvements

* Parameterize the adder width
* Compare pipelined and non-pipelined implementations
* Analyze timing and maximum operating frequency
* Implement the design on an FPGA

## Author

**Naidu**

This project is part of my learning journey in **VLSI and RTL Design**.
