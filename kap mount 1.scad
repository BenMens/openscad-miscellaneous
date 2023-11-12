$fn = 100;

difference() {
  union() {
    cube([60, 90, 5]);
    cube([60, 18, 7]);
  }
  
  translate([30, 22, -0.009])
  hull() {
    cylinder(20, 3, 3);
    translate([0, 55, 0])
      cylinder(20, 3, 3);
  }
  
  translate([10, 9, -0.009]) {
    cylinder(15, 1.75, 1.75);
    cylinder(1.75, 3.5, 2.1);    
  }

  translate([50, 9, -0.009]) {
    cylinder(15, 1.75, 1.75);
    cylinder(1.75, 3.5, 2.1);    
  }  
}



*difference() {
  union() {
    cube([60, 50, 5]);
    cube([60, 18, 7]);
  }
  
  translate([45, 22, -0.009])
  hull() {
    cylinder(20, 3, 3);
    translate([0, 20, 0])
      cylinder(20, 3, 3);
  }
  
  translate([10, 9, -0.009]) {
    cylinder(15, 1.75, 1.75);
    cylinder(1.75, 3.5, 2.1);    
  }

  translate([50, 9, -0.009]) {
    cylinder(15, 1.75, 1.75);
    cylinder(1.75, 3.5, 2.1);    
  }  
}


