open_project edge_project
set_top edge_detect
add_files edge_detect.cpp
add_files edge_detect.h

open_solution solution1
set_part xcu280-fsvh2892-2L-e
create_clock -period 5 -name default

csynth_design
export_design -format xo -output edge_detect.xo
