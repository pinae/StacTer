use <Stamps.scad>
res = 64;

module alu_fitting() {
    color("Gray") render(convexity=4) {
        difference() {
            cube([28, 18, 12], center=true);
            translate([-16, 0, 0]) rotate([0, 90, 0]) cylinder(d=10, h=32, $fn=res);
            //translate([-16, -10, -8]) cube([32, 10, 16]);
            for(i=[-1, 1]) {
                translate([i*9, i*-7, -7]) cylinder(d=2.5, h=14, $fn=res);
            }
        }
    }
}

module rod_fitting_lower() {
    color("Green") render(convexity=4) {
        difference() {
            union() {
                translate([0, 0, 2.5]) cube([28, 18, 5], center=true);
                translate([0, 0, 7]) cube([5, 18, 10], center=true);
                for(i=[-1, 1]) {
                    for(j=[-1, 1]) {
                        translate([j*9, i*7, 0]) cylinder(d=6.3+3.5, h=5, $fn=6);
                    }
                }
            }
            translate([0, -9, 12]) rotate([-90, 0, 0]) cylinder(d=5, h=20, $fn=res);
            translate([-3.5, 0, 5]) rotate([0, 0, 180]) belt_stamp(7);
            translate([3.5, 0, 5]) rotate([0, 0, 0]) belt_stamp(7);
            for(i=[-1, 1]) {
                for(j=[-1, 1]) {
                    translate([j*9, i*7, -1]) cylinder(d=3, h=7, $fn=res);
                    if(i==j) {
                        translate([j*9, i*7, -0.1]) cylinder(d=6.3, h=3, $fn=6);
                    }
                }
            }
            translate([-15, 18/2, 0]) rotate([-45, 0, 0]) cube([30, 10, 10]);
            translate([15, -18/2, 0]) rotate([-45, 0, 180]) cube([30, 10, 10]);
        }
    }
}

module rod_fitting_upper() {
    render(convexity=4) {
        difference() {
            union() {
                translate([0, 0, 11]) cube([28, 18, 12], center=true);
                for(i=[-1, 1]) {
                    for(j=[-1, 1]) {
                        translate([j*9, i*7, 5]) cylinder(d=6.3+3.5, h=12, $fn=6);
                    }
                }
            }
            translate([0, 0, 7]) cube([5, 20, 10], center=true);
            for(i=[-1, 1]) {
                for(j=[-1, 1]) {
                    translate([j*9, i*7, 4.5]) cylinder(d=3, h=14, $fn=res);
                    translate([j*9, i*7, 5+7.5]) cylinder(d=5.5, h=10, $fn=res);
                }
            }
            translate([0, -9, 12]) rotate([-90, 0, 0]) cylinder(d=5, h=20, $fn=res);
            translate([-3.5, 0, 5]) rotate([0, 0, 180]) belt_stamp(7);
            translate([3.5, 0, 5]) rotate([0, 0, 0]) belt_stamp(7);
        }
    }
}

module head_slider() {
    color("Gray") render(convexity=4) {
        difference() {
            union() {
                translate([0, 0, (18+10)/2-5]) cube([10, 10, 18+10], center=true);
                translate([-5, -5, -5]) cube([26, 15.5, 10]);
            }
            translate([-6, 0, 0]) rotate([0, 90, 0]) cylinder(d=7, h=50, $fn=res);
            translate([0, 6, 18]) rotate([90, 0, 0]) cylinder(d=7, h=12, $fn=res);
            translate([10, 11, -6]) cylinder(d=12, h=60, $fn=res);
            translate([10, 11, 1]) cylinder(d=16, h=50, $fn=res);
            translate([2, 21, -2]) rotate([90, 0, 0]) cylinder(d=2.5, h=50, $fn=res);
            translate([18, 21, -2]) rotate([90, 0, 0]) cylinder(d=2.5, h=50, $fn=res);
        }
    }
}

module head_slider_clamp() {
    color("Gray") render(convexity=4) {
        difference() {
            translate([-1, -5+16.5, -5]) cube([22, 9, 6]);
            translate([10, 11, -6]) cylinder(d=12, h=60, $fn=res);
            translate([10, 11, 1]) cylinder(d=16, h=50, $fn=res);
            translate([2, 21, -2]) rotate([90, 0, 0]) {
                cylinder(d=5, h=5, $fn=res);
                cylinder(d=3, h=11, $fn=res);
            }
            translate([18, 21, -2]) rotate([90, 0, 0]) {
                cylinder(d=5, h=5, $fn=res);
                cylinder(d=3, h=11, $fn=res);
            }
        }
    }
}

/*translate([0, 0, 0]) alu_fitting();
translate([-4, 0, 0]) rotate([0, 90, 0]) igidur8mm();
translate([0, 0, 6]) rod_fitting_lower();
translate([0, 0, 6]) rod_fitting_upper();*/

rod_fitting_lower();
translate([0, 24, 17]) rotate([180, 0, 0]) rod_fitting_upper();
for(i=[-1, 1]) {
    translate([i*9, i*7, 0]) cylinder(d=3, h=2.9, $fn=res);
    for(j=[-1, 1]) {
        translate([i*9, 24+j*7, 0]) cylinder(d=3, h=4.5, $fn=res);
    }
}