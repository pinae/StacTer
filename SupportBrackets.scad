module Bracket90degreesSupport_backRight() {
    difference() {
        union() {
            difference() {
                cylinder(r=150, h=20, $fn=256);
                translate([0, 0, -1]) cylinder(r=145, h=22, $fn=256);
            }
            difference() {
                cylinder(r=120, h=20, $fn=256);
                translate([0, 0, -1]) cylinder(r=115, h=22, $fn=256);
            }
            for(i=[0:17]) {
                rotate([0, 0, i*20]) translate([119, 0, 0]) rotate([0, 0, 45]) cube([36, 5, 20]);
                rotate([0, 0, i*20]) translate([119, 0, 0]) rotate([0, 0, -45]) cube([36, 5, 20]);
            }
            translate([113, 0, -30]) cube([37, 20, 50]);
            translate([93, 0, -30]) cube([77, 20, 50]);
            translate([0, 90, 0]) cube([15, 80, 20]);
        }
        translate([-200, -200, -1]) cube([200, 400, 22]);
        translate([-1, -200, -1]) cube([200, 200, 22]);
        translate([103, 10, -32]) cylinder(d=4.5, h=50, $fn=32);
        translate([160, 10, -32]) cylinder(d=4.5, h=50, $fn=32);
        translate([103, 10, -15]) cylinder(d=12, h=50, $fn=32);
        translate([160, 10, -15]) cylinder(d=12, h=50, $fn=32);
        translate([-1, 102, 10]) rotate([0, 90, 0]) cylinder(d=4.5, h=30, $fn=32);
        translate([-1, 160, 10]) rotate([0, 90, 0]) cylinder(d=4.5, h=30, $fn=32);
    }
}

module Bracket90degreesSupport_frontRight() {
    difference() {
        union() {
            difference() {
                cylinder(r=150, h=20, $fn=256);
                translate([0, 0, -1]) cylinder(r=145, h=22, $fn=256);
            }
            difference() {
                cylinder(r=120, h=20, $fn=256);
                translate([0, 0, -1]) cylinder(r=115, h=22, $fn=256);
            }
            for(i=[0:17]) {
                rotate([0, 0, i*20]) translate([119, 0, 0]) rotate([0, 0, 45]) cube([36, 5, 20]);
                rotate([0, 0, i*20]) translate([119, 0, 0]) rotate([0, 0, -45]) cube([36, 5, 20]);
            }
            translate([93, 0, 0]) cube([77, 20, 29.5]);
            translate([0, 90, 0]) cube([15, 80, 20]);
        }
        translate([-200, -200, -1]) cube([200, 400, 22]);
        translate([-1, -200, -1]) cube([200, 200, 22]);
        translate([103, 10, -1]) cylinder(d=4.5, h=50, $fn=32);
        translate([160, 10, -1]) cylinder(d=4.5, h=50, $fn=32);
        translate([103, 10, -0.5]) cylinder(d=12, h=15, $fn=32);
        translate([160, 10, -0.5]) cylinder(d=12, h=15, $fn=32);
        translate([-1, 102, 10]) rotate([0, 90, 0]) cylinder(d=4.5, h=30, $fn=32);
        translate([-1, 160, 10]) rotate([0, 90, 0]) cylinder(d=4.5, h=30, $fn=32);
    }
}

Bracket90degreesSupport_backRight();