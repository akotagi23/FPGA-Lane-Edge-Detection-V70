open_project edge_hls
set_top edge_detect

add_files edge_detect.cpp
add_files edge_detect.h
#add_files -tb tb_edge.cpp

open_solution -reset "solution1"
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 5

# MUST COME BEFORE CSYNTH
config_export -format xo

# Simulation
#csim_design

# Synthesis
csynth_design

# Export
export_design -format xo -output edge_detect.xo

exit

