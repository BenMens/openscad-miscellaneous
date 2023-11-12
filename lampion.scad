$fn=100;
w = 25;
h = 50;
clampDist = 11.6;

module lampion() {
  difference() {
    cylinder(r=w, h=1);

    translate([0, 0, -1])
      cylinder(r=10, h=5);
    
  }

  difference() {
    cylinder(r=w, h=h);

    translate([0, 0, -1])
      cylinder(r=w-0.4, h=h+2);
  }
}

module clamp() {
  
  translate([0, -5, 0]) {
    cube([2, 10, 6]);
        
    translate([0, 10, 4.5])
      rotate([90, 0, 0])
        cylinder(r=1.5, h=10);

    translate([-1.8, 0, 0])
      cube([3, 1, 7]);
        
  }
  
}


module connector() {
  
  difference() {
    cylinder(r=10, h=1);
    
    translate([0, 0, -1]) {
      difference() {
        cylinder(r=6, h=3);
        
        translate([4, -5, 0])
          cube([20, 20, 3]);
        
        translate([-24, -5, 0])
          cube([20, 20, 3]);
      }
    }
  }

  translate([clampDist / 2, 0, 1])
    clamp();

  translate([-clampDist / 2, 0, 1])
    rotate([0, 0, 180])
      clamp();
  
  
  difference() {    
    translate([-clampDist / 2 - 2, -5, 5.5])
      cube([clampDist + 4, 10, 4]);
    
    cylinder(r=4.4, h=10);
  }

}


module lampion1(count=10, r1=100, r2=80) {
  
  interval = 360/count;
  
  shape1 = [for (i = [0: interval: 360]) [r1 * sin(i), r1 * cos(i)]];
  shape2 = [for (i = [interval / 2: interval: 360 + interval]) [r2 * sin(i), r2 * cos(i)]];

  shape3 = [for (i = [0: 1: count]) each [shape1[i], shape2[i]]];
    
  polygon(shape3);
}


r1 = 30;
r2 = 28;

for (i = [0: 10: 80]) {
  translate([0, 0, i])
    linear_extrude(height = 5, twist=20, slices = 50)
      difference() {
        lampion1(count=10, r1=r1, r2=r2);
        lampion1(count=10, r1=r1-0.8, r2=r2-0.8);
      }
      
  rotate([0, 0, -20])
    translate([0, 0, i+5])
      linear_extrude(height = 5, twist=-20, slices = 50)
        difference() {
        lampion1(count=10, r1=r1, r2=r2);
        lampion1(count=10, r1=r1-0.8, r2=r2-0.8);
        }
}

// lampion();

difference() {
  cylinder(r=30, h=1);

  translate([0, 0, -1])
    cylinder(r=10, h=5);
  
}

connector();
