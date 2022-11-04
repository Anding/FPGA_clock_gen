# Timing constraints
create_clock -add -name clk_in_clock -period 10.00 -waveform {0 5} [get_ports { clk_in }];