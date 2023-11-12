$fn = 50;

rounding1 = 10;
cubeSize1 = 100;
cubeSize2 = cubeSize1 - 20;
cubeSize3 = cubeSize1 + 2 * rounding1;

module pyramid() {
    rotate([0, 0, 45])
        cylinder(50, 0, 50 * sqrt(2), $fn = 4);
}

color("gray")
difference() {

    translate([-cubeSize1  / 2,  -cubeSize1 / 2, -cubeSize1 / 2])
    minkowski() {
        cube([cubeSize1, cubeSize1, cubeSize1]);
        sphere(r=rounding1);
    }

    cube([cubeSize1 + 2 * rounding1 + 2, cubeSize2, cubeSize2], true);

    cube([cubeSize2, cubeSize1 + 2 * rounding1 + 2, cubeSize2], true);
        
    cube([cubeSize2, cubeSize2, cubeSize1 + 2 * rounding1 + 2], true);

    cube([cubeSize1, cubeSize1, cubeSize1], true);


    translate([0, 0, -100 + 0.01])
        pyramid();

    translate([0, 0, 100 - 0.01])
        rotate([0, 180, 0])
            pyramid();

    translate([0, 100 - 0.01, 0])
        rotate([90, 0, 0])
            pyramid();

    translate([0, -100 + 0.01, 0])
        rotate([270, 0, 0])
            pyramid();

    translate([-100 + 0.01, 0, 0])
        rotate([0, 90, 0])
            pyramid();

    translate([100 - 0.01, 0, 0])
        rotate([0, 270, 0])
            pyramid();

    //cube([200, 200, 200]);
}

