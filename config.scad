snappy_version = 3.010;


// 0 = Thinning Walls (Thin in the middle, thick at edges.  Prettier smooth solid walls.)
// 1 = Corrugated closed walls. (Zig-zagged solid walls. Less shrinkage stress.)
// 2 = Crossbeam walls. (Open sparse struts. Far less shrinkage stress. Recommended.)
wall_styling = 0;


platform_length = 100.0;  // mm.  Must be a multiple of rack_tooth_size.
platform_width  = 150.0;  // mm
platform_height =  40.0;  // mm
platform_thick  =   5.0;  // mm

rail_length     = 136.0;  // mm  Should match lifter_rod_length
rail_height     =  50.0;  // mm
rail_thick      =   5.0;  // mm

motor_rail_length = 128.0; // mm

groove_angle    =  30;   // degrees
groove_height   =  12;   // mm

joiner_angle    =  30;   // degrees
joiner_width    =  10;   // mm

rack_tooth_size     = 10/3;    // mm per tooth.
rack_height         = 15;    // mm
gear_base           = 10;    // mm
gear_teeth          = 24;
set_screw_size      =  3;    // mm size of set screw in drive gears, couplers, etc
motor_length        = 42; // mm length of NEMA17 motor.
motor_shaft_size    =  5.9;    // mm diameter of NEMA17 motor shaft.
motor_shaft_length  = 23;    // mm length of exposed NEMA17 motor shaft.
motor_shaft_flatted = true;  // Is motor shaft keyed? (RECOMMENDED)

lifter_rod_diam     =  25; // mm
lifter_rod_pitch    =   8; // mm lift per revolution
lifter_rod_length   = 136; // mm. Must be a multiple of lifter_rod_pitch
lifter_rod_angle    =  50; // degrees tooth face angle
lifter_tang_length  =  12; // mm
lifter_tang_width   =   5; // mm
lifter_coupler_len  =  20; // mm

adjust_screw_diam   =  8.0; // mm
adjust_screw_pitch  =  3.0; // mm
adjust_screw_length = 30.0; // mm
adjust_screw_angle  = 50.0; // mm
adjust_screw_knob_d = 12.0; // mm
adjust_screw_knob_h =  5.0; // mm

// Mechanical endstop bare microswitch.
endstop_hole_spacing =  9.5; // mm
endstop_hole_inset   =  8.0; // mm
endstop_hole_hoff    = 10.0; // mm
endstop_click_voff   =  3.0; // mm
endstop_screw_size   =  2.5; // mm
endstop_length       = 19.8; // mm
endstop_thick        =  6.5; // mm
endstop_depth        = 10.0; // mm

// Standard Mk2b Heated Build Platform from RepRapDiscount.com
hbp_width       = 215;   // mm
hbp_length      = 215;   // mm
hbp_hole_width  = 208.5; // mm
hbp_hole_length = 208.5; // mm
hbp_screwsize   =   3;   // mm

// Standard 200mm square borosilicate glass build platform
glass_width     = 200;   // mm
glass_length    = 214;   // mm
glass_thick     =   3;   // mm
//glass_thick     =   4.6;   // mm  3mm glass and 1.6mm heated bed.  Print supports in ABS.

// Cable chain dimensions
cable_chain_height = 15;  // mm
cable_chain_width  = 25;  // mm
cable_chain_length = 26;  // mm
cable_chain_pivot  =  5;  // mm
cable_chain_bump   =  1.5;  // mm
cable_chain_wall   =  3.25;  // mm

spool_holder_length = 140.0;  // mm

bridge_arch_angle   =  10.0;  // degrees

jhead_vent_span     =  20.0;  // mm
jhead_barrel_diam   =  22.0;  // mm
jhead_shelf_thick   =     4;  // mm
jhead_groove_thick  =     6;  // mm
jhead_groove_diam   =  12.0;  // mm
jhead_cap_height    =   8.2;  // mm
jhead_cap_diam      =  12.0;  // mm

extruder_thick       =   5.0;  // mm
extruder_shaft_len   =  25.0;  // mm
extruder_drive_diam  =  12.5;  // mm

/*
// 626 bearing
extruder_idler_diam  =  19.0;  // mm
extruder_idler_axle  =   6.0;  // mm
extruder_idler_width =   6.0;  // mm
*/

/*
// SAE bearing 5/8"OD x 1/4"ID x 1/5"W
extruder_idler_diam  =  15.9;  // mm
extruder_idler_axle  =   6.3;  // mm
extruder_idler_width =   5.0;  // mm
*/

// 686 bearing
extruder_idler_diam  =  12.0;  // mm
extruder_idler_axle  =   6.0;  // mm
extruder_idler_width =   5.0;  // mm

extruder_fan_size    =  40.0;  // mm
extruder_fan_thick   =  10.0;  // mm

cooling_fan_size     =  30.0;  // mm
cooling_fan_thick    =  10.0;  // mm
cooling_duct_height  =  18.0;  // mm

filament_diam        =   1.75; // mm

// This is the slop needed to make parts fit more exactly, and might be
// printer and slicer dependant.  Printing a slop calibration block should
// help dial this setting in for your printer.
printer_slop = 0.45;  // mm
gear_backlash = 0;  // mm



// Commonly used derived values.  Don't change these.
pi = 3.141592653589793236+0.0;
extruder_length = motor_rail_length;
shaft_clear = max(0, motor_shaft_length - (rack_height + gear_base));
rail_offset = shaft_clear + platform_thick + rack_height/2 + 2.0;
rail_spacing = platform_width - joiner_width*4 - 10;
rail_width = rail_spacing + joiner_width*2;
rack_base = rail_offset - platform_thick + groove_height/2 - rack_height;
motor_mount_spacing = 43 + joiner_width + 10;
side_mount_spacing = motor_rail_length - 10*2;
platform_z = rail_height + groove_height + rail_offset;
cantilever_length = (motor_rail_length + 2*platform_length - 2*rail_height - extruder_length - groove_height)/2;
motor_top_z = rail_height + groove_height - rack_height/2 - gear_base - 2;
lifter_tooth_depth = lifter_rod_pitch / 3.2;
z_joiner_spacing = lifter_rod_diam + 20 + joiner_width;
z_base_height = 2*platform_z + glass_thick + 12 + 10 - rail_height - groove_height;
adjust_thread_depth = adjust_screw_pitch/3.2;
drive_gear_diam = (gear_teeth+2)*rack_tooth_size/pi;

wall_styles = ["thinwall", "corrugated", "crossbeams"];
wall_style = wall_styles[wall_styling];


// vim: noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 nowrap
