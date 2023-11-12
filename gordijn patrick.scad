$fn = 100;

difference() {
  
  minkowski() {
    union() {
      cylinder(2.3, 5, 5);
      
      translate([-5, 0, 0])
        cube([10, 40, 2.3]);
      
      translate([0, -5, 0])
        cube([10, 10, 2.3]);
    }
    cylinder(1, 2, 2);
  }
  
  translate([0, 0, -1])
    cylinder(10, 2, 2);
  
  translate([0, 0, 1])
    cylinder(3, 2, 6);

}