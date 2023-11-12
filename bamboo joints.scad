$fn=50;

module a() {

  translate([-10, -10, -10])
      cube([20, 70 , 20 ]);

}




module a1() {
  a();

  rotate([0, 90, 90])
    a();

  rotate([90, 0, -90])
    a();
}

//module b() {
//
//  translate([-5, -5, -5])
//  difference() {
//    cube([10, 50 , 10 ]);
//  }
//
//}

module c() {

  translate([0, 0, 0])
  rotate([-90, 0, 0])
  cylinder(80, 7, 7);
}

module d() {
    rotate([90, 0, -90])
    c();

    rotate([0, 0, 0])
    c();
    
    rotate([0, 0, 90])
    c();
}



module f() {
  
translate([10, -10, -10])
rotate([0, 0, -45])
rotate([0, -55, 0])
cylinder(100, 2.2, 2.2);
  
}

module e() {
  
  difference() {
    
    translate([-60, 10, 10])
      cube([50, 50, 50]);
    
    translate([-30, 30, 30])
    rotate([0, 45 , 0])
    rotate([0, 0 , 90+55])
      translate([0, -100, -100])
        rotate([0, 0, 0])
          cube([200, 200, 200]);


    translate([-10, 10, 10])
    d();
    
    f();

  }
  
}



module g() {
  translate([0, 0, 0]) {

    difference() {
        a1();

      translate([-10, 10, 10])
      d();
      
      f();
    }
  }
}

module mount(mode = 1) {
  if (mode == 1) {
    difference() {
      minkowski() {
        cube([0.1, 50, 0.1]);

        cylinder(5, 5, 5, center=true);
      }
      
    translate([-8, 15, -5])
      cube([4, 2, 10]);
    
    translate([4, 15, -5])
      cube([4, 2, 10]);

    translate([-8, 35, -5])
      cube([4, 2, 10]);
    
    translate([4, 35, -5])
      cube([4, 2, 10]);

    }
  } else if (mode == 2) {
      translate([0, -15, 8])
        c();    
  }
}

module mount90() {
}

//rotate([-90-55, 0, 0])
//rotate([0, 45, 0])
//e();

//g();


difference() {
  union() {
    mount();
    rotate([0, 0, 45])
    mount();
  }
  
  mount(mode = 2);
  rotate([0, 0, 45])
  mount(mode = 2);  
}



//difference() {
//  union() {
//    mount();
//    rotate([0, 0, 45])
//      mount();
//    rotate([0, 0, 90])
//      mount();
//  }
//  
//  mount(mode = 2);
//  rotate([0, 0, 45])
//    mount(mode = 2);  
//  rotate([0, 0, 90])
//    mount(mode = 2);  
//}

//difference() {
//  union() {
//    mount();
//    rotate([0, 0, 90])
//      mount();
//  }
//  
//  mount(mode = 2);
//  rotate([0, 0, 90])
//    mount(mode = 2);  
//}
