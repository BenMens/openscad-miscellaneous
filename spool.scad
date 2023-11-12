$fn = 100;

//difference() {
//  union() {
//    cylinder(5, 30, 30);
//    
//    cylinder(15, 14, 14);
//
//    difference() {
//      cylinder(15, 25, 25);
//      
//      cylinder(17, 20, 20);
//    }
//  }
//  
//  translate([0, 0, -1])
//    cylinder(20, 11, 11);
//}


translate([100, 0, 0])
  difference() {
    cylinder(9, 14, 14);
    
    cylinder(17, 11, 11);
  }

//translate([200, 0, 0])
//  difference() {
//    cylinder(33, 14, 14);
//    
//    cylinder(55, 11, 11);
//  }
