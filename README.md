# Home Alarm System

## Overview
Implementation of a Home Alarm System on Basys 3 FPGA Board. This project focuses on creating a fundamental home alarm system for three windows and a door, each equipped with a sensor. The system includes an on/off switch and provides visual feedback through LEDs and a 7-segment display.

## Functionality
- Sensors (represented by switches sw[0] to sw[3]) trigger an alarm when opened.
- Enable on/off switch (sw[4]) controls the system's activation.
- The output, determined by the logical expression `(sw[0] | sw[1] | sw[2] | sw[3]) & sw[4]`, activates an LED.
- The 7-segment display shows '0' when power is off and 'A'..

## Implementation Details
- **Hardware Description Language (HDL):** SystemVerilog
- **Development Tool:** Xilinx Vivado
- **FPGA Board:** Basys 3

