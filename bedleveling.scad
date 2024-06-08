$fn=200;


module bold(mode, fn=6) {
    difference() {
        rotate([0, 0, 30])
            cylinder(4, 14, 14, $fn=fn);

        translate([0, 0, -2])
            cylinder(10, 9, 9);
    }
}


module sensor(mode = 1) {

    translate([0, 0, 17])
    if (mode == 1) {
      difference() {
        union() {
          translate([-13, -17, -3])
            cube([26, 17, 3]);      
          
          translate([-13, -4, 0])
            cube([26, 4, 15]);
        }
        
        translate([-4, -1.999, -4])
          cube([8, 2, 30]);      
        
        translate([-8, 1, 4])
          rotate([90, 0, 0])
            minkowski() {
              cube([0.1, 7, 1]);
              cylinder(r=1.5, h = 20);
            }

        translate([8, 1, 4])
          rotate([90, 0, 0])
            minkowski() {
              cube([0.1, 7, 1]);
              cylinder(r=1.5, h = 20);
            }

      }
    } else if (mode == 2) {
      translate([-9, -10, -4])
        cylinder(r=1.8, h=10);
      
      translate([9, -10, -4])
        cylinder(r=1.8, h=10);
      
      translate([-8, 10, 8])
        rotate([90, 0, 0])
          cylinder(r=1.5, h = 20);
      
      translate([-8, 5, 8])
        rotate([90, 0, 0])
          cylinder(r=1.9, h = 3);

      translate([8, 10, 8])
        rotate([90, 0, 0])
          cylinder(r=1.5, h = 20);
      
      translate([8, 5, 8])
        rotate([90, 0, 0])
          cylinder(r=1.9, h = 3);      
    } else {
      translate([0, 0, -20]) {
        %color("orange", 0.5)
          translate([-6.5, -15.5, -19])
            cube([13, 15, 36]);

        %color("orange", 0.5)
          translate([-13, -15.5, 15])
            cube([26, 15, 2]);
        
        %color("red", 0.5)
          translate([0, -10.5, -25])
            cylinder(h=6, r=2);      
        
        %color("green", 0.5)
          translate([0, -10.5, -29])
            cylinder(h=4, r=1);      
      }
    }

}



module holes(mode = 1) {
    if (mode == 2) {
        for (x = [0: 1]) {
            translate([x * 24 - 12, 6, 0]) {

                minkowski() {
                    cube([0.001, 1, 14]);

                    rotate([90, 0, 0])
                        cylinder(7, 1.7,1.7);
                }

                translate([0, -7.59, 0])
                    minkowski() {
                        cube([0.001, 1, 14]);

                        rotate([90, 0, 0])
                            cylinder(1.5, 3, 3);
                    }
            }
        }
    }
}

module ventilator(mode=1) {
    if (mode == 1) {
        translate([0, 0, 0])
            cube([28, 3, 52]);

        translate([0, 0, -3])
            cube([54, 3, 28]);

        translate([28, 3, 26])
            rotate([90, 0, 0])
                cylinder(3, 26, 26);

        difference() {
            translate([0, -17, 0])
                cube([24, 17, 2]);

            translate([2, -15, 0])
                cube([20, 15, 7]);
        }

        difference() {
            translate([3.5, -13.5, 0])
                cube([17, 12, 7]);

            translate([21, 0.5, 54])
                rotate([90, 0, 0])
                    cylinder(20, 50, 50);

        }

        translate([12, -8.5, -3])
            cylinder(3, 19, 19);

    } else if (mode == 2) {

        translate([4.5, -12.5, -4])
            cube([15, 10, 30]);

        translate([5.7, 4, 45])
            rotate([90, 0, 0])
                cylinder(5, 1.7, 1.7);

        translate([48, 4, 7.2])
            rotate([90, 0, 0])
                cylinder(5, 1.7, 1.7);

    }
}

module mount(mode) {
    if (mode == 1) {
        translate([3, 0, -3])
          cube([40, 5, 35]);
    }
}

module plate1(mode=1) {
  *if (mode == 1) {
    translate([0, -25, 0])
      cube([36, 25 ,3]);
  }
}


module plate3(mode=1) {
  if (mode == 1) {
    translate([-25, -25, 0])
      cube([50, 25, 2]);

    rotate([0, 0, -45])
      translate([0, 0, 0])
        cube([65, 25, 2]);

      cylinder(2, 25, 25);
  } else if (mode == 2) {
    translate([0, 0, -30])
      cylinder(40, 15, 15);
  }
}

module draw(mode) {
  translate([-25, 0, 0])
    mount(mode);

  translate([0, 3, 5])
    holes(mode);

  translate([-18, 3, -3])
    plate1(mode);


  // color("blue")
  translate([18, 0, 0])
    ventilator(mode);
}



module arm(mode=1, length=31, angle=-28) {

  if (mode == 1) {
    translate([31.9, -10, 0]) {
      difference() {
        rotate([0, angle, 0]) {
          cube([length-3, 20, 11]);
        }
        
        translate([0, -50, 20])
          cube([50, 100, 20]);
      }
    }

    difference() {
      translate([22, -10, 0])
        cube([10, 20, 11]);

      cylinder(h=30, r=25);
    }
  } else if (mode == 2) {
    difference() {
      union() {
        translate([23.01, 0.5, 1]) {
          cube([10, 7.5, 8]);
        }
        
        translate([23.01, -8, 1]) {
          cube([10, 7.5, 8]);
        }
      }

      cylinder(30, 25, 25);
    }


    translate([32.2, -10, 0.4]) {
        rotate([0, angle, 0]) {
            translate([0, 2, 1]) {
              cube([length, 7.5, 8]);
            }
            
            translate([0, 10.5, 1]) {
              cube([length, 7.5, 8]);
            }
        }
    }
  }
}

module coolerMount(mode=1) {
  translate([0, 0, -12])
    if (mode==1) {
      cylinder(11, 14, 14);

      translate([0, 0, 11])
        cylinder(1, 17, 17);

    } else if (mode ==2) {
      translate([0, 0, 2]) {
        cylinder(25, 11, 11);                
      }
    }
}

module cooler(mode=1) {
    if (mode == 1) {

        cylinder(h=4, r=28);

        translate([0, 0, 4])
            cylinder(7, 28, 25);
      
    } else if (mode == 2) {

        translate([0, 0, -8]) {
            cylinder(r=23, h=20);
        }

        translate([0, 0, 8.99]) {
            cylinder(7.1, 23, 27);
        }

        difference() {
            union() {
                translate([0, 0, 1])
                    cylinder(h=3.01, r=27);

                translate([0, 0, 3.999])
                    cylinder(5, 27, 25);
            }

            translate([0, 0, 6.999])
                cylinder(6, 23, 26);

            translate([0, 0, -3]) {
                cylinder(r=24, h=50);
            }

        }

        translate([0, 0, 2])
            for (i=[0: 20: 170]) {
                rotate([0, 0, 90+i]) {
                    translate([0, -2, 0])
                        cube([25, 4, 4]);

                    if (i != 80 && i != 100) {
                      translate([-25, -2, 0])
                          cube([25, 4, 2]);
                    }
                }
            }
    }
}

module draw1(mode=1) {
    translate([-51.6, 0, 0]) {
      cooler(mode);    

      arm(mode);

      translate([51.6, 0, 25])
        coolerMount(mode);
    }
}


// Frame
union() {
  difference() {
    union() {
      draw(1);
    }

    draw(2);
    sensor(2);
  }

  draw(3);
}


// 3DTouch mount
union() {
  difference() {
    union() {
      sensor(1);
    }

    sensor(2);
  }

  sensor(3);
}

// Cooler
translate([30, -8.5, -28])
  rotate([0, 0, -40])
    //color("blue")
      union() {
        difference() {
          union() {
            draw1(1);
          }

          draw1(2);

          *translate([-120, 10, -1]) 
            cube([100,100,100]);    

        }

        draw1(3);
      }


translate([-10, 25, -32])
  difference() {
    cylinder(h=2.6, r=30);
    
    translate([0, 0, -0.1])
      cylinder(h=3, r=5);
    
    translate([-5, 0, -0.1])
      cube([10, 30, 3]);
  }
