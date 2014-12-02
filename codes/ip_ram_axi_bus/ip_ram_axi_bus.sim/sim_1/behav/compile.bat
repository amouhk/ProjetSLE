@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;C:/Xilinx/SDK/2014.1/bin;C:/Xilinx/Vivado/2014.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2014.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2014.1/bin;%PATH%
set XILINX_PLANAHEAD=C:/Xilinx/Vivado/2014.1

xelab -m64 --debug typical --relax -L blk_mem_gen_v8_2 -L fifo_generator_v12_0 -L proc_common_v4_0 -L axi_bram_ctrl_v4_0 -L xil_defaultlib -L secureip --snapshot tb_ram_top_behav --prj C:/Users/kamouh/Documents/COURS_SLE_3A/ProjetAIP/abstract_NI/codes/ip_ram_axi_bus/ip_ram_axi_bus.sim/sim_1/behav/tb_ram_top.prj   xil_defaultlib.tb_ram_top
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
