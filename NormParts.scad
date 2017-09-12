res = 32;

module igidur5mm() {
    d1 = 5;
    d2 = 7;
    b1 = 4.6;
    color("Yellow") render(convexity=4) {
        difference() {
            cylinder(d=d2, h=b1, $fn=res);
            translate([0, 0, -1]) cylinder(d=d1, h=b1+2, $fn=res);
        }
    }
}

module igidur8mm() {
    d1 = 8;
    d2 = 10;
    b1 = 8;
    color("Yellow") render(convexity=4) {
        difference() {
            cylinder(d=d2, h=b1, $fn=res);
            translate([0, 0, -1]) cylinder(d=d1, h=b1+2, $fn=res);
        }
    }
}

module pulley20teeth(inner_d) {
    color("Silver") render(convexity=4) {
        difference() {
            union() {
                cylinder(d=17, h=8, $fn=res);
                cylinder(d=14, h=15.95, $fn=res);
                translate([0, 0, 15]) cylinder(d=17, h=0.95, $fn=res);
            }
            translate([0, 0, -1]) cylinder(d=inner_d, h=15.95+2, $fn=res);
        }
    }
}

module jhead_hotend() {
    color("Silver") render(convexity=6) {
        cylinder(h=12.77, d=12, $fn=res);
        cylinder(h=2.8, d=16, $fn=res);
        translate([0, 0, 6+2.8]) cylinder(h=12.77-6-2.8, d=16, $fn=res);
        translate([0, 0, 12.77]) cylinder(h=6.2, d=11.42, $fn=6);
        for(i=[0:10]) {
            translate([0, 0, -4.2-26+i*(26/11)]) cylinder(h=1.14, d=22.3, $fn=res);
        }
        translate([0, 0, -3]) cylinder(h=1.14, d=16, $fn=res);
        translate([0, 0, -4.2-26]) cylinder(h=26+4.2, d1=11.4, d2=7.6, $fn=res);
        translate([0, 0, -48]) cylinder(h=72.7, d=3, $fn=res);
        translate([0, 5, -4.2-26-3.34-12/2]) cube([15.86, 20, 12], center=true);
        translate([0, 0, -48]) cylinder(h=3, d=8, $fn=6);
        translate([0, 0, -48-2.65]) cylinder(h=2.65, d1=0.5, d2=4.9, $fn=res);
        translate([0, 0, 72.7-48-1.5]) cylinder(h=1.5, d=10, $fn=res);
    }
}

module heatbed() {
    color("Silver") render(convexity=4) difference() {
        union() {
            for(i=[0, 1]) {
                for(j=[0, 1]) {
                    translate([5+i*(219.5-10), 5+j*(219.5-10), 0]) cylinder(r=5, h=3.1, $fn=res);
                }
            }
            translate([5, 0, 0]) cube([219.5-10, 219.5, 3.1]);
            translate([0, 5, 0]) cube([219.5, 219.5-10, 3.1]);
        }
        for(i=[0, 1]) {
            for(j=[0, 1]) {
                translate([0, 0, 0]) {
                    translate([5.7+i*(219.5-11.4), 5.7+j*(219.5-11.4), 3.1-1.86]) cylinder(d=6, h=3, $fn=res);
                    translate([5.7+i*(219.5-11.4), 5.7+j*(219.5-11.4), -0.5]) cylinder(d=3.37, h=5, $fn=res);
                }
            }
        }
    }
}

module spindle() {
    color("Silver") cylinder(d=8, h=300, $fn=res);
}

module spindle_screw() {
    color("Silver") difference() {
        union() {
            translate([0, 0, -5.15]) cylinder(d=10, h=15, $fn=res);
            translate([0, 0, -3.55]) cylinder(d=21.92, h=3.55, $fn=res);
        }
        translate([0, 0, -6]) cylinder(d=7, h=17, $fn=res);
        for(i=[-1, 1]) {
            translate([i*(21.92/2-1.2-3.6/2), 0, -4]) cylinder(d=3.6, h=5, $fn=res);
            translate([0, i*(21.92/2-1.2-3.6/2), -4]) cylinder(d=3.6, h=5, $fn=res);
        }
    }
}

module ballbearing608() {
    color("Silver") render(convexity=4) difference() {
        cylinder(d=22, h=7, $fn=res);
        translate([0, 0, -1]) cylinder(d=8, h=9, $fn=res);
    }
}