@echo off
set xv_path=C:\\Xilinx\\Vivado\\2014.3\\bin
call %xv_path%/xelab  -wto 89f29022845446cbb4b93ca1d574bd8c -m64 --debug typical --relax -L fifo_generator_v12_0 -L xil_defaultlib -L secureip --snapshot tb_fifo_behav xil_defaultlib.tb_fifo -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
