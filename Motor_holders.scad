res = 32;

module Xmotor_holder() {
    render(convexity=6) difference() {
        union() {
            hull() {
                for(i=[-1, 1]) {
                    translate([i*30.25, 11, 0]) cylinder(d=20, h=5, $fn=res);
                }
            }
            cylinder(d=55, h=24.3, $fn=4*res);
            translate([-40.25, 11, 0]) cube([80.5, 10, 5]);
            for(i=[-1, 1]) {
                translate([i*21, 21, 5]) rotate([90, 0, 0]) cylinder(d=38.6, h=5, $fn=res);
            }
        }
        translate([0, 0, -1]) cylinder(d=22.5, h=41, $fn=res);
        for(i=[-1, 1]) {
            translate([i*30.25, 11, -1]) cylinder(d=4.5, h=7, $fn=res);
            for(j=[-1, 1]) {
                translate([i*15.5, j*15.5, -1]) {
                    cylinder(d=3.5, h=41, $fn=res);
                    cylinder(d=6.3, h=21, $fn=res);
                }
            }
            translate([i*48.5, -6.5-5, 18]) cube([55, 55, 26], center=true);
            translate([0, i*48.5, 12]) cube([55, 55, 26], center=true);
        }
        translate([-50+11.25, -49, -1]) cube([50, 50, 50]);
        translate([-50, -49+10.25, 5]) cube([50, 50, 50]);
        translate([-100, -100, -50]) cube([200, 200, 50]);
    }
}

module Ymotor_holder() {
    mirror([1,0,0]) Xmotor_holder();
}

module Zmotor_holder() {
    render(convexity=6) difference() {
        union() {
            hull() {
                for(i=[-1, 1]) {
                    translate([i*30.25, 11, 0]) cylinder(d=20, h=5, $fn=res);
                }
            }
            cylinder(d=55, h=24.3+0.5, $fn=4*res);
            translate([-40.25, 11, 0]) cube([80.5, 10, 5]);
            for(i=[-1, 1]) {
                translate([i*21, 21, 5]) rotate([90, 0, 0]) cylinder(d=38.6, h=5, $fn=res);
            }
        }
        translate([0, 0, -1]) cylinder(d=22.5, h=41, $fn=res);
        for(i=[-1, 1]) {
            translate([i*30.25, 11, -1]) cylinder(d=4.5, h=7, $fn=res);
            for(j=[-1, 1]) {
                translate([i*15.5, j*15.5, -1]) {
                    cylinder(d=3.5, h=41, $fn=res);
                    cylinder(d=6.3, h=21, $fn=res);
                }
            }
            translate([i*48.5, -6.5-5, 18]) cube([55, 55, 26], center=true);
            translate([0, i*48.5, 12]) cube([55, 55, 26], center=true);
        }
        translate([-50+11.25, -49, -1]) cube([50, 50, 50]);
        translate([-50, -49+10.25, 5]) cube([50, 50, 50]);
        translate([-100, -100, -50]) cube([200, 200, 50]);
    }
}

//translate([0, 0, 41]) rotate([180, 0, 0]) color("Blue") import("Motor_NEMA17.stl", convexity=6);
Ymotor_holder();