$fn=100;

difference() {
  minkowski() {
    cube([20.5, 12.5, 13]);
    cylinder(0.01, 1, 1);
  }
  
  translate([0, 0, 12]) {
    cube([20.4, 12.5, 2]);
  }

  translate([20.4 / 2 - 5, 5.25, 0]) {
    translate([0, 0, -5]) {
      minkowski() {
        cube([0.01, 1.5, 3]);
        cylinder(30, 2, 2);
      }
    }

    translate([10, 0, -5]) {
      minkowski() {
        cube([0.01, 1.5, 3]);
        cylinder(30, 2, 2);
      }
    }
  }  
}