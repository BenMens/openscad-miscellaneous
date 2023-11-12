$fn = 50;

module haak() {
  difference() {
      
    union() {
        translate([0, 30, 5])
          cube([30, 15, 18]);
  
        translate([0, 30, 23])
          rotate([-5.4, 0, 0])
            translate([0, -30, -0])
              cube([30, 50, 10]);
    
    }
    
    translate([-1, 45, 5])
      cube([32, 15, 30]);
  }
}

module hole(y = 5) {
  
  minkowski() {

    cube([0.01, 0.01 + y, 0.01]);
    
    union() {
      translate([0, 0, -5])
        cylinder(30, 2, 2);

      translate([0, 0, 4])
        cylinder(2, 4, 4);
      
      translate([0, 0, 0.71])
        cylinder(3.3, 1.5, 4);
      }

    }
  
}



difference() {
  union() {
    translate([0, 0, -3])
      cube([30, 180, 8]);

    translate([0, 10, 0])
      haak();

    translate([0, 135, 0])
      haak();
  }
  
  translate([15, 0, 0]) {
    
    translate([0, 6, 0])
      hole(0);
    
    translate([0, 60, 0])
      hole();

    translate([0, 120, 0])
      hole();
    
    
  }
}

