$fn = 100;

difference() {
  
  cube([5, 22, 22]);

  translate([-1, 15, 6])
    rotate([0, 90, 0])
      cylinder(10, 2.2, 2.2);

  translate([-1, 15, 16])
    rotate([0, 90, 0])
      cylinder(10, 2.2, 2.2);

}

translate([0, 0, 0]) {
  cube([14, 10, 22]);
}


translate([25, 10, 2])
rotate([90, 0, 0])
difference() {
  union() {
    cylinder(10, 15, 15);
    
    translate([-15, 0, 0])
      cube([30, 16, 10]);
    
    translate([11, 16, 0])
     cylinder(10, 4, 4);
    
    translate([-11, 16, 0])
     cylinder(10, 4, 4);
  }
  
  translate([0, 0, -1])
    cylinder(12, 7, 7);
  
  translate([-7, 0, -1])
    cube([14, 150, 12]);
}
