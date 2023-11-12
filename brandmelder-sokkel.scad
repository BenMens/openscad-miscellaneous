$fn=500;


difference() {
  
  cylinder(20, 70, 70);

  translate([0, 0, 2])
    cylinder(20, 60, 60);
  
  translate([0, 0, -1]) {
    cylinder(4, 20, 20);
    
    translate([30, 0, 0]) {
      minkowski() {
        cube([20, 0.001, 4]);
        
        cylinder(4, 2.2, 2.2);
      }
    }

    translate([-50, 0, 0]) {
      minkowski() {
        cube([20, 0.001, 4]);
        
        cylinder(4, 2.2, 2.2);
      }
    }
  }

//  translate([0, 0, 2])
//  difference() {
//    cylinder(30, 69, 69);
//    cylinder(30, 61, 61);
//  }
  
//  translate([0, 0, 2]) {
//    minkowski() {
//      difference() {
//        cylinder(0.1, 65, 65);
//        translate([0, 0, -1])
//          cylinder(2, 64.9, 64.9);
//      }
//      
//      cylinder(16, 3.8, 0);
//    }
//  }

  
  
//  cube([100, 100, 100]);
  
}

translate([0, 40, 1])
difference() {
  cylinder(19, 10, 10);
  
  translate([0, 0, 1])
  cylinder(20, 1.5, 1.5);
}

translate([0, -40, 1])
difference() {
  cylinder(19, 10, 10);
  
  translate([0, 0, 1])
  cylinder(20, 1.5, 1.5);
}





