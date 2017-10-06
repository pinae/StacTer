use <NormParts.scad>
use <Stamps.scad>
use <Profiles.scad>
use <Slider.scad>
use <Bearing_holders.scad>
use <Motor_holders.scad>
use <Profile_connectors.scad>
use <BeltTensioners.scad>
use <SupportBrackets.scad>
res = 64;

head_pos_x = 190;
head_pos_y = 120;

module slider() {
    alu_fitting();
    translate([-4, 0, 0]) rotate([0, 90, 0]) igidur8mm();
    translate([0, 0, 6]) {
        rod_fitting_lower();
        rod_fitting_upper();
    }
}

//back right
translate([head_pos_x+4+27, 0, 0]) slider();
translate([-71, 0, 0]) rotate([0, 90, 0]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([-39, 0, 0]) rotate([0, 90, 0]) ballbearing608();
translate([-31, 0, 0]) rotate([0, 90, 0]) pulley20teeth(8);
translate([-19, -49, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([-19, -20, 18]) rotate([0, 90, 90]) ballbearing608();
translate([-19, -12, 18]) rotate([0, 90, 90]) pulley20teeth(8);
translate([4+27+head_pos_x, -20+11, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=5, h=350, $fn=res);
translate([-39+11, 15+52+head_pos_y, 0]) rotate([90, 0, 90]) color("Silver") cylinder(d=5, h=350, $fn=res);
translate([-42, -23, -365]) profileI5(550);
translate([-32, -13, -14]) rotate([90, 0, 90]) XY_bearing_holder();
translate([-32, -13, 32]) rotate([-90, 0, 0]) XY_bearing_holder();
translate([-52.5, 0, 0]) rotate([0, -90, 0]) pulley60teeth(8);
translate([-93, -12, -40]) rotate([0, -90, 180]) color("Blue") import("Motor_NEMA17.stl", convexity=6);
translate([-53.5, -12, -40]) rotate([0, -90, 0]) pulley20teeth(5);
translate([-52, -12, -40]) rotate([0, 90, 180]) Xmotor_holder();
translate([-19, -33.5, 18]) rotate([90, 0, 0]) pulley60teeth(8);
translate([-31, -74, -22]) rotate([0, -90, -90]) color("Blue") import("Motor_NEMA17.stl", convexity=6);
translate([-31, -34.75, -22]) rotate([0, -90, 90]) pulley20teeth(5);
translate([-31, -33, -22]) rotate([0, -90, 90]) Ymotor_holder();

// front left
translate([311.5, -13, -14+28]) rotate([-90, 0, 90]) XY_bearing_holder();
translate([311.5, 0, 0]) rotate([0, 90, 0]) ballbearing608();
translate([310.5, 0, 0]) rotate([0, -90, 0]) pulley20teeth(8);
translate([321.5, -23, -365]) profileI5(550);
translate([311.5, -13, 32-28]) rotate([90, 0, 180]) XY_bearing_holder();
translate([298.5, -20, 18]) rotate([0, 90, 90]) ballbearing608();
translate([298.5, -35, 18]) rotate([0, 90, 90]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([298.5, -12, 18]) rotate([0, 90, 90]) pulley20teeth(8);

// front right
translate([-68.5, 332, 0]) rotate([0, 90, 0]) color("Silver") cylinder(d=8, h=400, $fn=res);
translate([4+27+head_pos_x, 332, 0]) slider();
translate([311.5, 345, -14]) rotate([-90, 180, 90]) XY_bearing_holder();
translate([311.5, 332, 0]) rotate([0, 90, 0]) ballbearing608();
translate([310.5, 332, 0]) rotate([0, -90, 0]) pulley20teeth(8);
translate([321.5, 355, -365]) profileI5(550);
translate([311.5, 345, 32]) rotate([-90, 0, 180]) XY_bearing_holder();
translate([298.5, 345, 18]) rotate([0, 90, 90]) ballbearing608();
translate([298.5, 343.5, 18]) rotate([0, -90, 90]) pulley20teeth(8);
translate([298.5, 15+52+head_pos_y, 18]) rotate([180, 0, 90]) slider();
translate([331.5, 345, -365]) rotate([90, 0, -90]) Bracket90degreesSupport_frontRight();

// back right
translate([-32, 345, -14+28]) rotate([-90, 0, -90]) XY_bearing_holder();
translate([-39, 332, 0]) rotate([0, 90, 0]) ballbearing608();
translate([-31, 332, 0]) rotate([0, 90, 0]) pulley20teeth(8);
translate([-42, 355, -365]) profileI5(550);
translate([-32, 345, 32-28]) rotate([90, 0, 0]) XY_bearing_holder();
translate([-19, 345, 18]) rotate([0, 90, 90]) ballbearing608();
translate([-19, 343.5, 18]) rotate([0, -90, 90]) pulley20teeth(8);
translate([-19, 15+52+head_pos_y, 18]) rotate([180, 0, 90]) slider();
translate([-32, 345, -365]) rotate([90, 0, -90]) Bracket90degreesSupport_backRight();

// z axis
translate([14+27, 26+52, -61.5]) heatbed();
for(i=[0, 1]) {
    for(j=[0, 1]) {
        translate([i*238+31, j*238+69, -65]) {
            rotate([180, 0, 0]) spindle();
            translate([0, 0, -30]) rotate([180, 0, 0]) spindle_screw();
            translate([0, 0, -7]) ballbearing608();
            translate([0, 0, -300]) ballbearing608();
            translate([0, 0, -7]) rotate([180, 0, 0]) pulley20teeth(8);
            translate([-13+i*26, 14-i*28, -7]) rotate([180, 0, i*180]) XY_bearing_holder();
            translate([-13+i*26, 14-i*28, -300]) rotate([180, 0, i*180]) XY_bearing_holder();
        }
        translate([18+j*264, -75, -62-i*293]) rotate([-90, 0, j*90]) corner();
    }
    translate([8+i*284, 345, -62]) rotate([90, 0, 0]) profileI5(440);
    translate([8+i*284, 345, -355]) rotate([90, 0, 0]) profileI5(440);
    translate([-32, 355, -62-i*293]) rotate([90, 0, 90]) profileI5(343.5);
    translate([292, 355, -72-i*273]) mirror([0, 0, -(i-1)]) front_right_fixer();
    translate([292, -23, -52-i*293]) front_left_fixer();
    translate([8, -3, -72-i*273]) rotate([0, (i-1)*180, 0]) back_left_fixer();
    translate([-52, -3, -82-i*253]) rotate([0, 90, 0]) profileI5(100);
    translate([-42, -13, -82-i*253]) rotate([-90, 0, 0]) back_left_fixer();
    translate([18, -85, -62-i*293]) rotate([90, 0, 90]) profileI5(264);
}
translate([8, 355, -52]) back_right_fixer(false);
translate([8, 355, -52-293]) back_right_fixer(true);
translate([-3, 300, -72]) rotate([0, 180, -90]) Zmotor_holder();
translate([-3, 300, -113.5]) rotate([0, 0, 90]) color("Blue") import("Motor_NEMA17.stl", convexity=6);
translate([-3, 300, -95]) rotate([0, 0, 90]) pulley20teeth(5);
translate([13, 245, -87]) ballbearing608();
translate([13, 195, -87]) ballbearing608();
translate([1, 222, -87]) ballbearing608();
translate([8, 220, -72]) Z_belt_tensioner_base();
translate([8, 220, -72-15.2]) Z_belt_tensioner_closer();


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