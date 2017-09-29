use <NormParts.scad>
use <Profiles.scad>
res = 64;

module XY_bearing_holder() {
    render(convexity=4) difference() {
        union() {
            translate([0, 0, -20]) cube([13, 28, 20]);
            translate([13, 14, -20]) cylinder(d=28, h=20, $fn=res);
            for(i=[-1, 1]) {
                difference() {
                    translate([0, 20*i+14, -10]) rotate([0, 90, 0]) cylinder(d=20, h=20, $fn=res);
                    translate([5+7.5, 15*i+4+10, -7.5]) cube([15, 6, 15], center=true);
                }
            }
            translate([0, -6, -20]) cube([5, 20+2*10, 20]);
            translate([0, -13, -20]) cube([20, 20+2*17, 5]);
        }
        translate([-10, -1, -21]) cube([10, 30, 22]);
        translate([13, 14, -7]) cylinder(d=22.4, h=19, $fn=res);
        translate([13, 14, -21]) cylinder(d=19, h=22, $fn=res);
        for(i=[-1, 1]) {
            translate([-1, 20*i+14, -10]) rotate([0, 90, 0]) cylinder(d=5.5, h=22, $fn=res);
            translate([5, 20*i+14, -10]) rotate([0, 90, 0]) cylinder(d=10, h=22, $fn=res);
            translate([5, 24.5*i+3.5, 0]) rotate([0, 45, 0]) cube([30, 21, 30]);
            translate([5+7.5, 17*i+4+10, -7.5]) cube([15, 6, 15], center=true);
            translate([5+7.5, 20*i+4+10, -5]) cube([15, 10, 10], center=true);
        }
    }
}

XY_bearing_holder();
//#translate([13, 14, -7]) ballbearing608();
//translate([-10, -30, -10]) rotate([-90, 0, 0]) profileI5(90);