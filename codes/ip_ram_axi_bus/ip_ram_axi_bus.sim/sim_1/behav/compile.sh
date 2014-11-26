#!/bin/sh
# Vivado(TM)
# compile.sh: Vivado-generated Script for launching XSim application
# Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
# 
if [ -z "$PATH" ]; then
  PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM:/softslin/vivado_14.1/SDK/2014.1/bin:/softslin/vivado_14.1/Vivado/2014.1/ids_lite/ISE/bin/lin64
else
  PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM:/softslin/vivado_14.1/SDK/2014.1/bin:/softslin/vivado_14.1/Vivado/2014.1/ids_lite/ISE/bin/lin64:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=$XILINX/lib/$PLATFORM:/softslin/vivado_14.1/Vivado/2014.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=$XILINX/lib/$PLATFORM:/softslin/vivado_14.1/Vivado/2014.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

#
# Setup env for Xilinx simulation libraries
#
XILINX_PLANAHEAD=/softslin/vivado_14.1/Vivado/2014.1
export XILINX_PLANAHEAD
ExecStep()
{
   "$@"
   RETVAL=$?
   if [ $RETVAL -ne 0 ]
   then
       exit $RETVAL
   fi
}

ExecStep xelab -m64 --debug typical --relax -L blk_mem_gen_v8_2 -L fifo_generator_v12_0 -L proc_common_v4_0 -L axi_bram_ctrl_v4_0 -L xil_defaultlib -L secureip --snapshot tb_ram_top_behav --prj /tp/xph3sle/xph3sle508/project_NI/ip_ram_axi_bus/ip_ram_axi_bus.sim/sim_1/behav/tb_ram_top.prj   xil_defaultlib.tb_ram_top
