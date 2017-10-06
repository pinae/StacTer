use <NormParts.scad>
use <Profiles.scad>
res=32;

module Z_belt_tensioner_base() {
    difference() {
        union() {
            hull() {
                translate([5, 25, -7.8]) cylinder(d=26, h=7.8, $fn=res);
                translate([5, -25, -7.8]) cylinder(d=26, h=7.8, $fn=res);
                translate([-7, 2, -7.8]) cylinder(d=26, h=7.8, $fn=res);
            }
            translate([5, 25, -15.2]) cylinder(d=7.9, h=10, $fn=res);
            translate([5, -25, -15.2]) cylinder(d=7.9, h=10, $fn=res);
            translate([-7, 2, -15.2]) cylinder(d=7.9, h=10, $fn=res);
        }
        translate([5, 25, -16]) cylinder(d=4.3, h=18, $fn=res);
        translate([5, -25, -16]) cylinder(d=4.3, h=18, $fn=res);
        translate([-7, 2, -16]) cylinder(d=4.3, h=18, $fn=res);
        translate([5, 25, -3.5]) cylinder(d=8+0.4, h=18, $fn=6);
        translate([5, -25, -3.5]) cylinder(d=8+0.4, h=18, $fn=6);
        translate([-7, 2, -3.5]) cylinder(d=8+0.4, h=18, $fn=6);
        translate([0, 13, -9]) {
            cylinder(d=5.5, h=10, $fn=res);
            cylinder(d=9, h=7, $fn=res);
        }
        translate([0, -11, -9]) {
            cylinder(d=5.5, h=10, $fn=res);
            cylinder(d=9, h=7, $fn=res);
        }
    }
}

module Z_belt_tensioner_closer() {
    difference() {
        union() {
            hull() {
                translate([5, 25, -5.25]) cylinder(d=26, h=4.75, $fn=res);
                translate([5, -25, -5.25]) cylinder(d=26, h=4.75, $fn=res);
                translate([-7, 2, -5.25]) cylinder(d=26, h=4.75, $fn=res);
            }
            translate([5, 25, -5.25]) cylinder(d=10, h=5.25, $fn=res);
            translate([5, -25, -5.25]) cylinder(d=10, h=5.25, $fn=res);
            translate([-7, 2, -5.25]) cylinder(d=10, h=5.25, $fn=res);
        }
        translate([5, 25, -16]) cylinder(d=4.3, h=18, $fn=res);
        translate([5, -25, -16]) cylinder(d=4.3, h=18, $fn=res);
        translate([-7, 2, -16]) cylinder(d=4.3, h=18, $fn=res);
    }
}

Z_belt_tensioner_base();
//translate([0, 0, -15.2]) Z_belt_tensioner_closer();
//translate([0, 50, 10]) rotate([90, 0, 0]) profileI5(100);
//translate([5, 245-220, -87+72]) ballbearing608();
//translate([5, 195-220, -87+72]) ballbearing608();
//translate([-7, 222-220, -87+72]) ballbearing608();
//color("red") translate([5, 25, -20.5]) cylinder(d=4, h=20, $fn=res);
//color("red") translate([5, -25, -20.5]) cylinder(d=4, h=20, $fn=res);
//color("red") translate([-7, 2, -20.5]) cylinder(d=4, h=20, $fn=res);