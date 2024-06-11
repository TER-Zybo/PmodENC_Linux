# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.srcs/sources_1/bd/system/ip/system_PetaENC_0_0/system_PetaENC_0_0.xci
# IP: The module: 'system_PetaENC_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] -quiet

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/PetaENC_pmod_bridge_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_pmod_bridge_0_0 || ORIG_REF_NAME==PetaENC_pmod_bridge_0_0} -quiet] -quiet

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_xlconstant_0_0/PetaENC_xlconstant_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_xlconstant_0_0 || ORIG_REF_NAME==PetaENC_xlconstant_0_0} -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0_ooc.xdc

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/PetaENC_pmod_bridge_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_pmod_bridge_0_0 || ORIG_REF_NAME==PetaENC_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PetaENC_0_0'. Do not add the DONT_TOUCH constraint.
set_property KEEP_HIERARCHY SOFT [get_cells U0 -quiet] -quiet

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.srcs/sources_1/bd/system/ip/system_PetaENC_0_0/system_PetaENC_0_0.xci
# IP: The module: 'system_PetaENC_0_0' is the root of the design. Do not add the DONT_TOUCH constraint.

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] -quiet

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/PetaENC_pmod_bridge_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_pmod_bridge_0_0 || ORIG_REF_NAME==PetaENC_pmod_bridge_0_0} -quiet] -quiet

# IP: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_xlconstant_0_0/PetaENC_xlconstant_0_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==PetaENC_xlconstant_0_0 || ORIG_REF_NAME==PetaENC_xlconstant_0_0} -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0_ooc.xdc

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_axi_gpio_0_0/PetaENC_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_axi_gpio_0_0 || ORIG_REF_NAME==PetaENC_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/PetaENC_pmod_bridge_0_0_board.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==PetaENC_pmod_bridge_0_0 || ORIG_REF_NAME==PetaENC_pmod_bridge_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_pmod_bridge_0_0/src/pmod_concat_ooc.xdc

# XDC: /nfs/home/m1info3/Documents/TER_FPGA/hw_with_enc/hw_with_enc.gen/sources_1/bd/system/ip/system_PetaENC_0_0/src/PetaENC_ooc.xdc
# XDC: The top module name and the constraint reference have the same name: 'system_PetaENC_0_0'. Do not add the DONT_TOUCH constraint.
#dup# set_property KEEP_HIERARCHY SOFT [get_cells U0 -quiet] -quiet
