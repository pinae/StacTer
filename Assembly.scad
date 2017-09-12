use <NormParts.scad>
use <Stamps.scad>
use <Profiles.scad>
use <Slider.scad>
use <Bearing_holders.scad>
res = 64;

head_pos_x = 0;
head_pos_y = 0;

translate([head_pos_x, 0, 0]) alu_fitting();
translate([0+head_pos_x, 0, 0]) rotate([0, 90, 0]) igidur8mm();
translate([4+head_pos_x, 0, 6]) rod_fitting_lower();
translate([4+head_pos_x, 0, 6]) rod_fitting_upper();
translate([-39, 0, 0]) rotate([0, 90, 0]) color("Silver") cylinder(d=8, h=300, $fn=res);
translate([-39, 0, 0]) rotate([0, 90, 0]) ballbearing608();
translate([-31, 0, 0]) rotate([0, 90, 0]) pulley20teeth(8);
translate([-19, -20, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=8, h=300, $fn=res);
translate([-19, -20, 18]) rotate([0, 90, 90]) ballbearing608();
translate([-19, -12, 18]) rotate([0, 90, 90]) pulley20teeth(8);
translate([4+head_pos_x, -20+11, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=5, h=300, $fn=res);
translate([-39+11, 15+head_pos_y, 0]) rotate([90, 0, 90]) color("Silver") cylinder(d=5, h=300, $fn=res);
translate([14+head_pos_x, 26+head_pos_y, -7.8]) jhead_hotend();
translate([4+head_pos_x, 15+head_pos_y, 0]) {head_slider(); head_slider_clamp();}
translate([14, 26, -61.5]) heatbed();
translate([-42, -23, -100]) profileI5(132);
translate([-32, -13, -14]) rotate([90, 0, 90]) XY_bearing_holder();
translate([-32, -13, 32]) rotate([-90, 0, 0]) XY_bearing_holder();