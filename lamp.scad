$fn = 100;

difference() {
  minkowski() {
    cylinder(0.001, 2, 2);
    cube([90, 110, 5]);
  }
  
  translate([45, 110-25, -1]) {
      cylinder(40, 2.1, 2.1);
      cylinder(4, 4, 4);
  }


  translate([45, 25, -1]) {    
      cylinder(40, 2.1, 2.1);
      cylinder(4, 4, 4);
  }
  
  translate([-2.01, 55 - 3.5, 1])
    cube([15, 7, 4.1]);
  
  
  translate([50, 55, -1]) {    
      minkowski() {
        cube([20, 0.1, 0.1]);
        cylinder(40, 2, 2);
      }
  }


  translate([30, 45, -1]) {    
      minkowski() {
        cube([0.1, 20, 0.1]);
        cylinder(40, 2, 2);
      }
  }


}
  