use <NormParts.scad>
use <Profiles.scad>
res = 64;

module XY_bearing_holder() {
    render(convexity=4) difference() {
        union() {
            translate([0, 0, -20]) cube([13, 28, 20]);
            translate([13, 14, -20]) cylinder(d=28, h=20, $fn=res);
        }
        translate([-10, -1, -21]) cube([10, 30, 22]);
        translate([13, 14, -7]) cylinder(d=22.3, h=19, $fn=res);
        translate([13, 14, -21]) cylinder(d=19, h=22, $fn=res);
    }
}

XY_bearing_holder();
#translate([13, 14, -7]) ballbearing608();
translate([-10, -30, -10]) rotate([-90, 0, 0]) profileI5(90);