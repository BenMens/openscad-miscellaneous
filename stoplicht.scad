$fn=50;

difference() {
  union() {
    translate([10, 0, 0])
      cylinder(6, 10, 10);

    cube([20, 25, 6]);

    translate([10, 25, 0])
      cylinder(6, 10, 10);
    
    translate([6.5, -80, 0])
      cube([7, 80, 6]);
  }

  translate([10, 0, -1])
    cylinder(10, 2.6, 2.6);

  translate([10, 12.5, -1])
    cylinder(10, 2.6, 2.6);

  translate([10, 25, -1])
    cylinder(10, 2.6, 2.6);

  translate([8.5, -90, 2])
    cube([3, 90, 5]);

}

