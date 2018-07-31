# TCL File Generated by Component Editor 8.0
# Mon Dec 22 17:22:07 EST 2008
# DO NOT MODIFY


# +-----------------------------------
# | 
# | Altera_UP_SD_Card_Avalon_Interface "Altera_UP_SD_Card_Avalon_Interface" v1.0
# | null 2008.12.22.17:22:07
# | A module that allows communication with an SD Card
# | 
# |    ./hdl/Altera_UP_SD_Card_Avalon_Interface.vhd syn
# |    ./hdl/Altera_UP_SD_Card_48_bit_Command_Generator.vhd syn
# |    ./hdl/Altera_UP_SD_Card_Buffer.vhd syn
# |    ./hdl/Altera_UP_SD_Card_Clock.vhd syn
# |    ./hdl/Altera_UP_SD_Card_Control_FSM.vhd syn
# |    ./hdl/Altera_UP_SD_Card_Interface.vhd syn
# |    ./hdl/Altera_UP_SD_Card_Memory_Block.qip syn
# |    ./hdl/Altera_UP_SD_Card_Response_Receiver.vhd syn
# |    ./hdl/Altera_UP_SD_CRC16_Generator.vhd syn
# |    ./hdl/Altera_UP_SD_CRC7_Generator.vhd syn
# |    ./hdl/Altera_UP_SD_Signal_Trigger.vhd syn
# | 
# +-----------------------------------


# +-----------------------------------
# | module Altera_UP_SD_Card_Avalon_Interface
# | 
set_module_property DESCRIPTION "A module that allows communication with an SD Card"
set_module_property NAME Altera_UP_SD_Card_Avalon_Interface
set_module_property VERSION 1.0
set_module_property GROUP "University Program/Memory"
set_module_property DISPLAY_NAME "SD Card Interface"
set_module_property LIBRARIES {ieee.std_logic_1164.all ieee.std_logic_arith.all ieee.std_logic_unsigned.all std.standard.all}
set_module_property TOP_LEVEL_HDL_FILE "hdl/Altera_UP_SD_Card_Avalon_Interface.vhd"
set_module_property TOP_LEVEL_HDL_MODULE Altera_UP_SD_Card_Avalon_Interface
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property SIMULATION_MODEL_IN_VERILOG false
set_module_property SIMULATION_MODEL_IN_VHDL false
set_module_property SIMULATION_MODEL_HAS_TULIPS false
set_module_property SIMULATION_MODEL_IS_OBFUSCATED false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file hdl/Altera_UP_SD_Card_Avalon_Interface.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_48_bit_Command_Generator.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Buffer.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Clock.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Control_FSM.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Interface.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Memory_Block.qip {SYNTHESIS}
add_file hdl/Altera_UP_SD_Card_Response_Receiver.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_CRC16_Generator.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_CRC7_Generator.vhd {SYNTHESIS}
add_file hdl/Altera_UP_SD_Signal_Trigger.vhd {SYNTHESIS}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point avalon_slave_0
# | 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 minimumUninterruptedRunLength 1
set_interface_property avalon_slave_0 bridgesToMaster ""
set_interface_property avalon_slave_0 isMemoryDevice false
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 addressSpan 1024
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 isNonVolatileStorage false
set_interface_property avalon_slave_0 addressAlignment DYNAMIC
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 printableDevice false

set_interface_property avalon_slave_0 ASSOCIATED_CLOCK clock_sink

add_interface_port avalon_slave_0 i_avalon_chip_select chipselect Input 1
add_interface_port avalon_slave_0 i_avalon_address address Input 8
add_interface_port avalon_slave_0 i_avalon_read read Input 1
add_interface_port avalon_slave_0 i_avalon_write write Input 1
add_interface_port avalon_slave_0 i_avalon_byteenable byteenable Input 4
add_interface_port avalon_slave_0 i_avalon_writedata writedata Input 32
add_interface_port avalon_slave_0 o_avalon_readdata readdata Output 32
add_interface_port avalon_slave_0 o_avalon_waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock_sink
# | 
add_interface clock_sink clock end
set_interface_property clock_sink ptfSchematicName ""

add_interface_port clock_sink i_reset reset Input 1
add_interface_port clock_sink i_clock clk Input 1
add_interface_port clock_sink i_reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit_end
# | 
add_interface conduit_end conduit end

set_interface_property conduit_end ASSOCIATED_CLOCK clock_sink

add_interface_port conduit_end b_SD_cmd export Bidir 1
add_interface_port conduit_end b_SD_dat export Bidir 1
add_interface_port conduit_end b_SD_dat3 export Bidir 1
add_interface_port conduit_end o_SD_clock export Output 1
# | 
# +-----------------------------------
