$fn = 100;


difference() {

    union() {
        cylinder(d=24, h=8);

        translate([0, 12, 8]) {
            rotate([90, 0, 0])
                linear_extrude(height = 2)                
                    polygon([[-3, 0], [3, 0], [0, 10]]);

            translate([-3, -2, -8]) 
                cube([6, 2, 8]);
        }

        translate([-11.5, -2.5, 0]) 
            cube([27, 5, 8]);
    }

    translate([0, 0, 2]) 
        cylinder(d=21, h=20);

    translate([0, 0, -1]) 
        cylinder(d=12, h=10);

    translate([-11, -0.5, -1]) 
        cube([40, 1, 10]);

    translate([13.5, 5, 4]) 
        rotate([90, 0, 0]) 
            cylinder(d=2.6, h=10);
}

