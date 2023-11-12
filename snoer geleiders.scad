$fn=100;

//difference() {
//  cube([40, 20, 10]);
//  
//  translate([-0.01, -0.01, -0.01]) {    
//    cube([50, 10, 5]);  
//  }
//
//  translate([5, -10, 5 - 0.02])
//    cube([30, 20, 10]);
//  
//  translate([10, -1, 1 - 0.02])
//    cube([20, 25, 10]);
//  
//  translate([5, 15, -2]) {
//    cylinder(20, 2, 2);
//    
//    translate([0, 0, 10])
//      cylinder(3, 2, 5);
//  }
//  
//  translate([35, 15, -2]) {
//    cylinder(20, 2, 2);
//    
//    translate([0, 0, 10])
//      cylinder(3, 2, 5);
//  }
//}


difference() {
  cube([40, 15, 10]);
  
  translate([5, 5, 1])
    cube([30, 25, 10]);
  
  translate([10, -1, 1])
    cube([20, 25, 10]);  
  
  translate([-1, 5, 1]) {    
    cube([50, 30, 3.2]);  
  }

  translate([-0.01, 5, 1 - 0.02]) {    
    cube([50, 5, 5]);  
  }
}



//translate([0, 5.2, 2])
//color("blue")
//  difference() {
//    
//    translate([0, 0, 0])    
//      cube([40, 4.6, 20]);
//    
//    translate([-0.01, -1 , 2.2])
//      cube([5.2, 12, 20]);
//
//    translate([40.01 - 5.2, -1 , 2.2])
//      cube([5.2, 12, 20]);
//
//    translate([10, -1, -0.01])
//      cube([20, 12, 15]);
//    
//  }