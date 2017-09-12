module cap() {
    difference() {
        union() {
            for(i=[0, 8]) {
                translate([i, 0, 0]) {
                    cylinder(d1=8, d2=10, h=2, $fn=64);
                    translate([0, 0, 2]) cylinder(d=10, h=8, $fn=64);
                }
            }
            translate([4, 5.4, 0]) {
                cylinder(d1=5, d2=7, h=2, $fn=64);
                translate([0, 0, 2]) cylinder(d=7, h=8, $fn=64);
            }
        }
        for(i=[0, 8]) {
            translate([i, 0, 2]) cylinder(d=8.3, h=9, $fn=64);
        }
        translate([4, 5.4, 2]) cylinder(d=5.3, h=9, $fn=64);
    }
}

module clamper() {
    difference() {
        union() {
            for(i=[0, 8]) {
                translate([i, 0, 0]) {
                    cylinder(d=10, h=8, $fn=64);
                }
            }
            translate([4, 5.4, 0]) {
                cylinder(d=7, h=8, $fn=64);
            }
        }
        for(i=[0, 8]) {
            translate([i, 0, -0.5]) cylinder(d=8.3, h=9, $fn=64);
        }
        translate([4, 5.4, -0.5]) cylinder(d=5.3, h=9, $fn=64);
        translate([4, 2, -0.5]) cylinder(d=5.3, h=9, $fn=64);
    }
}

cap();
translate([8, -10.5, 0]) rotate([0, 0, 180]) cap();
translate([18.5, 0, 0]) clamper();
translate([18.5+8, -10.5, 0]) rotate([0, 0, 180]) clamper();