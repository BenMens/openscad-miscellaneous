$fn = 100;

module kast1() {
    
    difference() {
    union() {
        cube([30, 50, 10]);
        
        translate([-10, 0, 0])
            cube([50, 20, 5]);
        }
    
    translate([-1, -1, 5])
        cube([32, 22, 8]);    
    
    translate([4.25, -1, 7])
        cube([21.5, 52, 8]);   
   
    minkowski() {
        cube([0.01, 1, 0.01]);
        
        translate([15, 14.5, -1])
            cylinder(10, 1.7, 1.7);
        }
    }    
}

module kast2() {
    difference() {
        cube([40, 40, 5]);

        translate([-1, 0, 0])
        rotate([30, 0, 0])
          cube([50, 40, 5]);

        minkowski() {
            cube([40, 0.01, 0.01]);
            
          translate([0, 20, 11])
              sphere(10);
          }
        }    
        
    }


module kast3() {
    
    difference() {
        union() {
            translate([-11, -20])
                cube([22, 40, 1]); 

            translate([0, 0, -3])
                sphere(8);
            }
            
        translate([-12, -20, -50])
            cube([24, 40, 50]); 

        translate([-12, 20, -1])
            rotate([60, 0, 0])
                cube([24, 10, 10]); 


        translate([-12, -20, -1])
            rotate([-309, 0, 0])
                cube([24, 10, 10]); 
           
    }
}


translate([-100, 0, 0])
    kast1();

//translate([0, 0, 0])
//    kast2();

//translate([100, 0, 0])
//    kast3();