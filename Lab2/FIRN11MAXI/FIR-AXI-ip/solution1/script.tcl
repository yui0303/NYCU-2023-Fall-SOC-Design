############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FIR-AXI-ip
set_top fir_n11_maxi
add_files hls_FIRN11MAXI/FIR.cpp
add_files hls_FIRN11MAXI/FIR.h
add_files -tb hls_FIRN11MAXI/FIRTester.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./FIR-AXI-ip/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
