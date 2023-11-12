$fn=100;
bladeThickness = 25;
thickness = 7;
angle = 60;

module socket() {
  
  cube([20, 30, 15]);
  
  translate([0, 0, -2.5])
    cube([20, 22, 20]);
}

module a() {
  color("red")
  difference() {
    d = 1.6;
    l = 50;
    pd = [0, 0];
    pa = [l * sin(angle), - l * cos(angle)];
    pb = pa + [ sin (90-angle) * d, + cos(90-angle) * d];
    pc = pd + [0, d / cos (90-angle) + thickness / tan(angle) ];

    linear_extrude(60, convexity = 10)
      polygon([
        [0, 0], 
        [-bladeThickness,  0], 
        [-bladeThickness, 30], 
        [-bladeThickness - thickness,  30], 
        [-bladeThickness - thickness,  -thickness], 
        [thickness, -thickness],
        [thickness, 30],
        [thickness, 30] + pa,
        [thickness, 30] + pb,
        [0, 30] + pc,
      ]);
    
    rotate([0, 0, -30]) {
      translate([10, 7, 9])
        socket();
      
      translate([10, 7, 36])
        socket();
    }
    
    translate([-40, 15, 10])
      rotate([0, 90, 0]) 
        cylinder(20, 2, 2);

    translate([-40, 15, 50])
      rotate([0, 90, 0]) 
        cylinder(20, 2, 2);
    
    holes2();
    
    holes4();
    
    holes6();

  }
}

module b(h) {
  color("blue")
  translate([0.2, 29.8, 0])
  difference() {
    l = 49.7;
    pd = [0, 0];
    pa = [l * sin(angle), - l * cos(angle)];
    pb = [ l * sin(angle) - 14, -49];
    
    linear_extrude(h, convexity = 10)
      polygon([
        [thickness, 0], 
        [thickness, 0] + pa,
        [thickness, 0] + pb,
        [thickness, -49],
        [thickness - 39.2, -49],
        [thickness - 39.2, -37],
        [thickness, -37],
      ]);
        
  }
}


//rotate([0, 0, -30]) {
//  translate([10, 7, 9])
//    socket();
//  
//  translate([10, 7, 36])
//    socket();
//}


module holes1() {
  
  rotate([90, 0, -30]) {
    cylinder(10, 0.5, 0.5);
    
    translate([20, 0, 0])
      cylinder(10, 0.5, 0.5);
    
    translate([40, 0, 0])
      cylinder(10, 0.5, 0.5);

  }
  
} 

module holes3() {
    rotate([90, 0, -30]) {
      translate([40, 0, 0])
        cylinder(10, 0.5, 0.5);      
    }  
} 

module holes4() {
  translate([14, 28, 15])
    holes3();

  translate([14, 28, 45])
    holes3();
}

module holes2() {
  translate([14, 28, 2])
    holes1();

  translate([14, 28, 30])
    holes1();

  translate([14, 28, 58])
    holes1();
}

module hole5() {
  rotate([90, 0, 0]) {
    cylinder(20, 4, 4);
    
    translate([0, 0, 20])
      cylinder(10, 0.5, 0.5);
  }
}


module holes6() {
  translate([-15, 15, 2])
    hole5();
  
  translate([-15, 15, 30])
    hole5();

  translate([-15, 15, 58])
    hole5();
}


a();

//difference() {
//  b(60);
//  
//  translate([-5, 3, 4])
//    b(24);
//
//  translate([-5, 3, 32])
//    b(24);
//  
//  holes2();
//  
//  holes4();
//  
//  holes6();
//
//}


