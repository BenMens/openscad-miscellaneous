$fn = 50;

difference() {
  
  union() {
    translate([-75 / 2, -5, 0])
      cube([75, 15, 10]);
    
    translate([-15 / 2, -23, 0])
      cube([15, 25, 5]);
  }

  translate([-65 /2 , 0, -0.1])
    cube([65, 111, 32]);

  translate([-65 /2 + 5 , -10, -0.1])
    cube([6, 15, 5]);
  
  translate([65 /2 - 6 - 5 , -10, -0.1])
    cube([6, 15, 5]);

  translate([0, -16, -0.1])
    minkowski() {
      cube([0.1, 5, 1]);
      
      cylinder(10, 3, 3);
    }
}



*translate([-65 /2 + 0.5, 0, 0])
  difference() {
    union() {
      cube([5, 120, 37]);

      translate([0, -5, 0])
        cube([5, 130, 5]);
    }
    
    translate([-65 / 2, 5, -0.1])
      cube([65, 111, 32]);

  }