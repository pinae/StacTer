use <NormParts.scad>
use <Stamps.scad>
use <Profiles.scad>
use <Slider.scad>
use <Bearing_holders.scad>
res = 64;

head_pos_x = 220;
head_pos_y = 220;

translate([head_pos_x+4+27, 0, 0]) alu_fitting();
translate([27+head_pos_x, 0, 0]) rotate([0, 90, 0]) igidur8mm();
translate([4+27+head_pos_x, 0, 6]) rod_fitting_lower();
translate([4+27+head_pos_x, 0, 6]) rod_fitting_upper();
translate([-68.5, 0, 0]) rotate([0, 90, 0]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([-39, 0, 0]) rotate([0, 90, 0]) ballbearing608();
translate([-31, 0, 0]) rotate([0, 90, 0]) pulley20teeth(8);
translate([-19, -20, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([-19, -20, 18]) rotate([0, 90, 90]) ballbearing608();
translate([-19, -12, 18]) rotate([0, 90, 90]) pulley20teeth(8);
translate([4+27+head_pos_x, -20+11, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=5, h=350, $fn=res);
translate([-39+11, 15+52+head_pos_y, 0]) rotate([90, 0, 90]) color("Silver") cylinder(d=5, h=350, $fn=res);
translate([14+27, 26+52, -61.5]) heatbed();
translate([-42, -23, -80]) profileI5(132);
translate([-32, -13, -14]) rotate([90, 0, 90]) XY_bearing_holder();
translate([-32, -13, 32]) rotate([-90, 0, 0]) XY_bearing_holder();
translate([-52.5, 0, 0]) rotate([0, -90, 0]) pulley60teeth(8);

module air_channel() {
    translate([0, 0, -10]) cylinder(d=48, h=10, $fn=res);
    for(i=[-1, 1]) {
        translate([29, 41, -40]) rotate([0, 45, i*90+90]) translate([17, 0, 0]) cylinder(d1=10, d2=16, h=15, $fn=res);
        translate([29, 41, -41]) rotate([0, 0, i*90+90]) translate([23.05, 0, 0]) sphere(d=16, $fn=res);
        translate([29, 41, -41]) rotate([0, 0, i*90+90]) translate([23.05, 0, 0]) rotate([i*-45, 0, 0]) cylinder(d1=16, d2=18, h=10, $fn=res);
    }
}

// Head parts
translate([14+27+head_pos_x, 26+52+head_pos_y, -7.8]) jhead_hotend();
translate([4+27+head_pos_x, 15+52+head_pos_y, 0]) {head_slider(); head_slider_clamp();}
translate([-15+27+head_pos_x, -15+52+head_pos_y, -5]) {fan40mm();}