r = 10;


difference() {
  union() {
    cube([88, 37 - r, 1]);

    translate([r, 37-r, 0])
      cylinder(1, r, r);

    translate([88 - r, 37-r, 0])
      cylinder(1, r, r);

    translate([r, 0, 0])
      cube([88- 2 * r, 37, 1]);
  }
  
  translate([0, 0, -1]) {
    translate([4, 12, 0])
      cube([8, 37, 3]);
    
    translate([76, 12, 0])
      cube([8, 37, 3]);
    
    translate([24, 16, 0])
      cube([7, 37, 3]);
    
    translate([81 - 24, 16, 0])
      cube([7, 37, 3]);
    
    translate([44, 8 + 17, 0])
      cylinder(3, 8, 8);

    translate([36, 8 + 17, 0])
      cube([16, 16, 3]);

  }
}
