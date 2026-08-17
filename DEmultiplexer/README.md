# DEMULTIPLEXER

## Description

A Demultiplexer (DEMUX) is a digital circuit that routes one input signal to one of multiple output lines based on select inputs.

This project implements a **1-to-4 Demultiplexer using Verilog HDL**.

## Features

* 1 input
* 2 select lines
* 4 output lines
* Written in Verilog HDL
* Includes a testbench for simulation

## Truth Table

| Select S1 | Select S0 | Y0 | Y1 | Y2 | Y3 |
| --------- | --------- | -- | -- | -- | -- |
| 0         | 0         | D  | 0  | 0  | 0  |
| 0         | 1         | 0  | D  | 0  | 0  |
| 1         | 0         | 0  | 0  | D  | 0  |
| 1         | 1         | 0  | 0  | 0  | D  |

Where:

* `D` = Input data
* `S1, S0` = Select lines
* `Y0-Y3` = Output lines

## Files

* `demultiplexer.v` – Verilog design code
* `demultiplexer_tb.v` – Verilog testbench
* `expected_output.txt` – Expected simulation output

## Tools

* Verilog HDL
* Icarus Verilog / ModelSim / Vivado

## How to Run

Compile the design and testbench:

```bash
iverilog -o demux_sim demultiplexer.v demultiplexer_tb.v
```

Run the simulation:

```bash
vvp demux_sim
```

## Expected Result

The input data is routed to exactly one output depending on the select lines.
