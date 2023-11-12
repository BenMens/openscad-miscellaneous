$fn = 1000;

difference() {
  cylinder(7, 52, 52);
  
  translate([0, 34, -1])
    minkowski() {
      cube([0.001, 10, 9]);
      
      cylinder(9, 2, 2);
    }
    
  translate([0, -44, -1])
    minkowski() {
      cube([0.001, 10, 9]);
      
      cylinder(9, 2, 2);
    }
    
  rotate([0, 0, 60])
    translate([0, -52, -1])
      minkowski() {
        cube([0.001, 30, 9]);
        
        cylinder(9, 3.5, 3.5);
      }
    
    
}