$fn = 50;

module wood() {
  translate([3, 3, -0.1])
    color("green") {
      cube([44.5, 200, 18]);
      cube([200, 44.5, 18]);
    }  
}

module clamp() {
  cube([50.5, 80, 19]);
  cube([80, 50.5, 19]);

  l = 15;
  l1 = sqrt( l * l + l * l);

  translate([50.5 + l, 50.5, 0])
    rotate([0, 0, 135])
      cube([l1, l1, 19]);
}


difference() {
  clamp();
  wood();
  
  translate([0, 0, -5]) {
    translate([0, 0, 0]) {
      translate([40, 24.75, 0])
        cylinder(50, 2, 2);
      
      translate([70, 24.75, 0])
        cylinder(50, 2, 2);
      
      translate([24.75, 40, 0])
        cylinder(50, 2, 2);
      
      translate([24.75, 70, 0])
        cylinder(50, 2, 2);
    }
  }
}
