$fn = 100;

difference() {
  union() {
    cylinder(h = 6.5, r = 85, center = false);
    cylinder(h = 12, r = 14.5, center = false);
  }
  
  translate([0, 0, -1])
    cylinder(h = 40, r = 12, center = false);

  translate([0, 0, 3.4]) 
    rotate([0, 90, 0])
      cylinder(h = 90, r = 3.1, center = false);
  
  translate([0, -3.1, 3.4])
    cube([100, 6.2, 10]);
  
  
  rotate([0, 0, 45])
    translate([0, 0, -1])
      gap();
  
  rotate([0, 0, 90])
    translate([0, 0, -1])
      gap();

  rotate([0, 0, 135])
    translate([0, 0, -1])
      gap();

  rotate([0, 0, 180])
    translate([0, 0, -1])
      gap();

  rotate([0, 0, 225])
    translate([0, 0, -1])
      gap();

  rotate([0, 0, 270])
    translate([0, 0, -1])
      gap();
      
  rotate([0, 0, 315])
    translate([0, 0, -1])
      gap();
}

module slice(angle = 20, r = 90)
  linear_extrude(10)
    polygon([
      [0, 0], 
      [r * cos(angle),  r * sin(angle)], 
      [r * cos(angle), -r * sin(angle)]
    ]);


module gap() {
  difference() {
    intersection() {
      
      cylinder(h = 10, r = 50, center = false);
      
      slice();
    }
    
    translate([0, 0, -1])
      cylinder(h = 12, r = 30, center = false);
    
  }
}

