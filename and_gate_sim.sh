#!/bin/bash

# Compile the VHDL files
ghdl -a and_gate.vhdl
ghdl -a and_gate_tb.vhdl

# Elaborate the testbench
ghdl -e and_gate_tb

# Run the simulation
ghdl -r and_gate_tb --vcd=and_gate.vcd

# Check if GTKWave is installed and open the waveform
if command -v gtkwave &> /dev/null
then
    echo "Opening waveform in GTKWave..."
    gtkwave and_gate.vcd
else
    echo "GTKWave is not installed. Please install it to view the waveform."
fi