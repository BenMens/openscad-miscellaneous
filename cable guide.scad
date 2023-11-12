$fn = 100;

union() {
  
  cube([20, 20, 1]);

  difference() {
    translate([2, -5, 0])
    minkowski() {
      cube([16, 5, 1]);
      
      cylinder(h=0.5, r = 2);
    }
    
    translate([5, -2.75, -1])
      minkowski() {
        cube([10, 0.0001, 4]);
        
        cylinder(h=0.5, r = 2.25);
      }
      
    translate([5, -9, -1])
      cube([10, 5, 10]);
  }


  translate([5, -6, 0])
    minkowski() {
      cube([7, 0.0001, 1]);
      
      cylinder(h=0.5, r = 1);
    }

  translate([15, -6, 0])
    minkowski() {
      cube([2, 0.0001, 1]);
      
      cylinder(h=0.5, r = 1);
    }


}