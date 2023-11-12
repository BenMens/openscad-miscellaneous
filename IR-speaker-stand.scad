$fn = 200;
width = 126/2;
depth = 107/2;

difference()  {

  scale([width+2,depth+2, 1])
    cylinder(5, 1, 1);
  
  translate([0, 0, 4])
  scale([width, depth, 1])
    cylinder(4, 1, 1);

  translate([0, 0, -1])
  scale([width-10, depth-10, 1])
    cylinder(6, 1, 1);
  

  translate([-11, depth+15, 2.5])
  rotate([90, 0, 0])
  minkowski() {
    cube([0.1, 10, 0.1]);
    cylinder(30, 1.5, 1.5);
  }


  translate([11, depth+15, 2.5])
  rotate([90, 0, 0])
  minkowski() {
    cube([0.1, 10, 0.1]);
    cylinder(30, 1.5, 1.5);
  }
  
  translate([0, -depth+15, 2.5])
  rotate([90, 0, 0])
  minkowski() {
    cube([0.1, 10, 0.1]);
    cylinder(30, 1.5, 1.5);
  }

}

difference() {  
  translate([-15, depth, 0]) {
    cube([30, 7, 25]);
  }
  
  translate([-15, depth + 15, 15])
  rotate([90, 0, 0])
  minkowski() {
    union() {
      cube([4, 0.1, 0.1]);
      
      translate([4, -12.5, 10])
        cube([0.1, 12.5, 0.1]);
    }
    cylinder(20, 1.5, 1.5);
  }
  
  translate([11, depth + 15, 15])
  rotate([90, 0, 0])
  minkowski() {
    union() {
      cube([4, 0.1, 0.1]);
      
      translate([0, -12.5, 10])
        cube([0.1, 12.5, 0.1]);
    }
    cylinder(20, 1.5, 1.5);
  }
  
  translate([-20, depth-5, 15])
    cube([40, 10, 15]);

}

translate([-15, depth-10, 0]) {
  cube([30, 10, 1]);
}


