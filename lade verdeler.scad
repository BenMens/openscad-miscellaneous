$fn = 100;

module ladeVerdeler(width = 60, length= 160) {
  
  translate([10, 10, 0])
    minkowski() {
      cube([length - 20, width - 20, 1]);
      
      cylinder(h=0.00001, r=10);
    }
    

    hull() {
      translate([5, width / 2, 0])
        cylinder(h=25, r1=5, r2=1);
      
      translate([length - 5, width / 2, 0])
        cylinder(h=25, r1=5, r2=1);
    }
}

//ladeVerdeler(width = 120, length= 160);
ladeVerdeler(width = 60, length= 160);
