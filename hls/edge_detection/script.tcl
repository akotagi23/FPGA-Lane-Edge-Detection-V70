open_project edge_hls
set_top edge_detect

add_files edge_detect.cpp
add_files edge_detect.h

open_solution -reset "solution1"

set_part {xcu280-fsvh2892-2L-e}
create_clock -period 3.33

# IMPORTANT FIX — configure export BEFORE synthesis
config_export -format xo

csynth_design

export_design -format xo -output edge_detect.xo
exit

