res = 32;

module front_right_fixer() {
    render(convexity=6) difference() {
        union() {
            hull() {
                cylinder(d=20, h=20, $fn=res);
                translate([0, -23, 0]) cylinder(d=20, h=5, $fn=res);
            }
            translate([0, -10, 0]) cube([19.5, 20, 20]);
        }
        translate([0, 0, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, 0, 5]) cylinder(d=10, h=22, $fn=res);
        translate([0, -23, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, -23, 5]) cylinder(d=10, h=22, $fn=res);
        translate([14.5, 0, 10]) rotate([0, -90, 0]) cylinder(d=10, h=27, $fn=res);
        translate([20, 0, 10]) rotate([0, -90, 0]) cylinder(d=4.5, h=27, $fn=res);
        translate([0, -5, 10]) cube([14.5, 10, 20]);
    }
}

module front_left_fixer() {
    render(convexity=6) difference() {
        union() {
            hull() {
                cylinder(d=20, h=20, $fn=res);
                translate([0, -23, 0]) cylinder(d=20, h=5, $fn=res);
            }
            hull() {
                cylinder(d=20, h=20, $fn=res);
                translate([0, 23, 0]) cylinder(d=20, h=5, $fn=res);
            }
            translate([0, -10, 0]) cube([19.5, 20, 20]);
        }
        translate([0, 0, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, 0, 5]) cylinder(d=10, h=22, $fn=res);
        translate([0, -23, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, -23, 5]) cylinder(d=10, h=22, $fn=res);
        translate([0, 23, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, 23, 5]) cylinder(d=10, h=22, $fn=res);
        translate([14.5, 0, 10]) rotate([0, -90, 0]) cylinder(d=10, h=27, $fn=res);
        translate([20, 0, 10]) rotate([0, -90, 0]) cylinder(d=4.5, h=27, $fn=res);
        translate([0, -5, 10]) cube([14.5, 10, 20]);
    }
}

module back_right_fixer() {
    render(convexity=6) difference() {
        union() {
            hull() {
                cylinder(d=20, h=20, $fn=res);
                translate([0, -23, 0]) cylinder(d=20, h=5, $fn=res);
            }
            translate([-40, -10, 0]) cube([40, 20, 20]);
        }
        translate([0, 0, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, 0, 5]) cylinder(d=10, h=22, $fn=res);
        translate([0, -23, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([0, -23, 5]) cylinder(d=10, h=22, $fn=res);
        translate([-25, 0, -1]) cylinder(d=4.5, h=22, $fn=res);
        translate([-25, 0, 5]) cylinder(d=10, h=22, $fn=res);
        translate([-35, 0, 10]) rotate([0, 90, 0]) cylinder(d=10, h=50, $fn=res);
        translate([-41, 0, 10]) rotate([0, 90, 0]) cylinder(d=4.5, h=50, $fn=res);
        translate([-35, -5, 10]) cube([35, 10, 20]);
    }
}

module back_left_fixer() {
    render(convexity=6) difference() {
        union() {
            translate([-10, 0, 0]) rotate([0, 90, 0]) cylinder(d1=46, d2=54, h=0.3, $fn=4*res);
            translate([-9.7, 0, 0]) rotate([0, 90, 0]) cylinder(d1=54, d2=57, h=0.7, $fn=4*res);
            translate([-9, 0, 0]) rotate([0, 90, 0]) cylinder(d1=57, d2=59, h=1, $fn=4*res);
            translate([-8, 0, 0]) rotate([0, 90, 0]) cylinder(d1=59, d2=59.5, h=1, $fn=4*res);
            translate([-7, 0, 0]) rotate([0, 90, 0]) cylinder(d1=59.5, d2=59.8, h=1, $fn=4*res);
            translate([-6, 0, 0]) rotate([0, 90, 0]) cylinder(d1=59.8, d2=60, h=1, $fn=4*res);
            translate([-5, 0, 0]) rotate([0, 90, 0]) cylinder(d=60, h=10, $fn=4*res);
            translate([9.7, 0, 0]) rotate([0, 90, 0]) cylinder(d2=46, d1=54, h=0.3, $fn=4*res);
            translate([9, 0, 0]) rotate([0, 90, 0]) cylinder(d2=54, d1=57, h=0.8, $fn=4*res);
            translate([8, 0, 0]) rotate([0, 90, 0]) cylinder(d2=57, d1=59, h=1, $fn=4*res);
            translate([7, 0, 0]) rotate([0, 90, 0]) cylinder(d2=59, d1=59.5, h=1, $fn=4*res);
            translate([6, 0, 0]) rotate([0, 90, 0]) cylinder(d2=59.5, d1=59.8, h=1, $fn=4*res);
            translate([5, 0, 0]) rotate([0, 90, 0]) cylinder(d2=59.8, d1=60, h=1, $fn=4*res);
        }
        translate([-100, -100, -100]) cube([200, 200, 100]);
        translate([-11, -10, -1]) cube([22, 20, 20.5]);
        translate([-11, -9, 18.5]) cube([22, 18, 2]);
        for(i=[-1, 1]) {
            translate([-11, i*9, 19.5]) rotate([0, 90, 0]) cylinder(d=2, h=22, $fn=res);
            translate([0, i*25, -1]) cylinder(d=4.5, h=50, $fn=res);
            translate([0, i*25, 5]) cylinder(d=10, h=50, $fn=res);
            translate([0, 0, 10]) rotate([i*90, 0, 0]) cylinder(d=4.5, h=50, $fn=res);
            translate([0, i*15, 10]) rotate([i*-90, 0, 0]) cylinder(d=10, h=50, $fn=res);
            translate([i*5, i*-20, 10]) rotate([0, 0, (i+1)*90]) cube([10, 50, 50]);
            translate([0, i*20, 10]) cylinder(d=10, h=50, $fn=res);
        }
    }
}

module corner() {
    render(convexity=6) difference() {
        rotate([90, 0, 0]) hull() {
            for(i=[-1, 1]) {
                rotate_extrude(angle=90, convexity=6, $fn=4*res) translate([20, i*7.5, 0]) circle(d=5, $fn=res);
            }
        }
        translate([-50, -50, -50]) cube([100, 100, 50]);
        translate([-50, -50, -50]) cube([50, 100, 100]);
        translate([10, 0, -1]) cylinder(d=4.5, h=50, $fn=res);
        translate([10, 0, 5]) cylinder(d=10, h=50, $fn=res);
        translate([-1, 0, 15]) rotate([0, 90, 0]) cylinder(d=4.5, h=50, $fn=res);
        translate([5, 0, 15]) rotate([0, 90, 0]) cylinder(d=10, h=50, $fn=res);
        translate([10, -5, 15]) cube([50, 10, 50]);
    }
}
