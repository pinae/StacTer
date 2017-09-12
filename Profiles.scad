module profileI5(l) {
    color("Silver") render(convexity=8) linear_extrude(height=l, convexity=8) {
        difference() {
            union() {
                for(i=[-1, 1]) {
                    for(j=[-1, 1]) {
                        translate([i*8, j*8, 0]) circle(d=4, $fn=12);
                        translate([i*(10-1.58/2), j*(2.5+5.5/2), 0]) square([1.58, 5.5], center=true);
                        translate([i*(2.5+5.5/2), j*(10-1.58/2), 0]) square([5.5, 1.58], center=true);
                        translate([i*(5.55+1.5/2), j*(10-1.58-1.5/3), 0]) square([1.5, 1.5], center=true);
                        translate([i*(10-1.58-1.5/3), j*(5.55+1.5/2), 0]) square([1.5, 1.5], center=true);
                    }
                    rotate([0, 0, i*45]) square([20, 1.5], center=true);
                }
                square([2*(10-6.35), 2*(10-6.35)], center=true);
            }
            circle(d=4.3, $fn=16);
            for(i=[-1, 1]) {
                for(j=[-1, 1]) {
                    translate([i*5.55, j*(10-1.58-1.5/2), 0]) circle(d=1.5, $fn=8);
                    translate([i*(10-1.58-1.5/2), j*5.55, 0]) circle(d=1.5, $fn=8);
                }
            }
        }
    }
}

profileI5(50);