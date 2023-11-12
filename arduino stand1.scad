use <electronics.scad>

module basePlate(width,depth) {
    d = 10;
    
    translate([0, depth / 2, 2.5])
    union() {
        difference() {
            cube([width, depth, 5],true);
            cube([width - 2 * d, depth - 2 * d, 6],true);
            
            for (i=[0: 10: (depth - 2 * d - 5)]) {
                translate([-width / 2 + d, i - (depth - 2 * d ) / 2 + 5, 0])
                    cube([2, 3, 6], true);
            }

            for (i=[0: 10: (width - 2 * d - 5)]) {
                translate([i - (width - 2 * d) / 2 + 5, - depth / 2 + d, 0])
                    cube([3, 2, 6], true);
            }
            
        }
        
        for (i=[0: 10: (depth - 2 * d - 5)]) {
            translate([width / 2 - d, i - (depth - 2 * d ) / 2 + 5, 0])
                cube([1.6, 2.6, 5], true);
        }

        for (i=[0: 10: (width - 2 * d - 5)]) {
            translate([i - (width - 2 * d) / 2 + 5, depth / 2 - d, 0])
                cube([2.6, 1.6, 5], true);
        }

        l = sqrt(pow(width-2*d,2) + pow(depth-2*d,2));
        
        angle = atan((depth-2*d)/(width-2*d));
        
        translate([0,0,-1.5]) {
            difference() {
                cube([width, depth, 2],true);
                cube([width - 2 * d - 2, depth - 2 * d - 2, 3],true);
            }
            
            for (i=[0: 20: (depth - 2 * d) / 2 - 10]) {
                
                translate([0, -i, 0])
                    cube([width, 1, 2], true);
                
                translate([0, i , 0])
                    cube([width, 1, 2], true);
            }
            
            for (i=[0: 20: (width - 2 * d) / 2 - 10]) {
                
                translate([-i, 0, 0])
                    cube([1, depth, 2],true);

                translate([i, 0, 0])
                    cube([1, depth, 2],true);
            }
            
            rotate(-angle)
                cube([l,1,2],true);
            
            rotate(angle)
                cube([l,1,2],true);
        }
    }
}


module wall(length, angle) {
    x = length * sin(angle);
    y = length * cos(angle);
    
    rotate([0, -90])
        linear_extrude(1)
            polygon([
                [0, length/sin(90-angle)],
                [x, y],
                [0, 0]
            ], center=false);
}


module basePlateWithSliders(width, depth) {

    basePlate(width, depth);

    translate([width/2 - 5, 10, 5])
        rotate([90,0,180])
            color("red")
            slider(false, depth - 20, 30, 30);

    translate([-width/2 + 5, 10, 5])
        rotate([90,0,180])
            color("red")
            slider(false, depth - 20, 30, 30);


    translate([-width/2 + 10, depth - 5, 5])
        rotate([90,0,90])
            color("red")
            slider(false, width - 20, 30, 30);


    translate([-width/2 + 10,  5, 5])
        rotate([90,0,90])
            color("red")
            slider(false, width - 20, 30, 30);
    
}

module controlPanel(width, height) {
    angle = 30;
    cutoffLength = 5 * tan(angle);
    footLength = 5 / sin(90-angle);
    sliderLength =  (height - footLength) * sin(angle);
    
    translate([0, 0, -1])
        difference() {
            union() {
                cube([width, height, 1]);
                difference() {
                    translate([0, 0, 1])
                        rotate([-angle, 0, 0])
                            translate([0, -5, -10])
                                cube([width, 8, 10]);
                    
                    translate([-1, -10, -10])
                        cube([width + 2, 30, 10]);
                    }
                
                translate([5, 0 , 1])
                    rotate([-angle,0,0])
                        slider(true, sliderLength + cutoffLength, angle, 0);

                translate([width-5, 0, 1])
                    rotate([-angle,0,0])
                        slider(true, sliderLength + cutoffLength, angle, 0);
                
                translate([width, footLength, 1])    
                    wall(sliderLength, 90-angle);    

                translate([1, footLength, 1])    
                    wall(sliderLength, 90-angle);    
            }
        }
}

module modulePlate(width, depth, marginX = 0.2, , marginY = 0.2) {
    
    translate([width/2, depth/2, 1])
    difference() {
        union() {
            
            difference() {

                cube([width- 2 * marginX, depth- 2 * marginY,2],true);
                
                translate([0, 0, 1])
                    cube([width - 4 - 2 * marginX, depth - 4 - 2 * marginY,2],true);
            }
            
            for (x=[1: 1: depth / 10]) {
                translate([-width / 2 - 0.2 + marginX, x * 10 - depth / 2 - 5, 0])
                    cube([1.4, 2.4, 2], true);
            }

            for (x=[1: 1: width / 10]) {
                translate([ x * 10 - width / 2 - 5, -depth / 2 - 0.2 + marginY, 0])
                    cube([2.4, 1.4, 2], true);
            }
        }

        for (x=[1: 1: depth / 10]) {
            translate([width / 2 + 0.2 - marginX, x * 10 -depth / 2 - 5, 0])
                cube([2, 3, 3], true);
        }

        for (x=[1: 1: width / 10]) {
            translate([x * 10 - width / 2 - 5, depth / 2 + 0.2 - marginY, 0])
                cube([3, 2, 3], true);
        }
    }

}


module controlPanelWithLcd(width, height) {
    difference() {
        lcdX = 110;
        lcdY = 55;

        union() {
            controlPanel(width, height);

            translate([0, height-6])
                cube([width,2,2]);

            translate([0, height-45])
                cube([width,3,3]);
            
            translate([lcdX, lcdY, -1])
                hd44780Lcd();
            
        }
        
        translate([lcdX, lcdY, 0]) 
            hd44780LcdCutout();
        
        for (i = [0: 3]) {
            translate([lcdX + 30 - i * 20, 25])
                cylinder(5, 3.6, 3.6, center=true);
        }

        translate([40, 55])
            cylinder(5, 3.8, 3.8, center=true);

        translate([20, 20])
            cylinder(5, 3.2, 3.2, center=true);
        
    }
}

translate([-85, 10 , 3]) {

//    translate([0, 0])
//        color("blue")
//            modulePlate(170, 30);

    translate([0, 35])
        color("blue")
            modulePlate(170, 60, 0.6);

//    translate([-10, 100]) {
//        color("yellow")
//            modulePlate(110, 60);
//        
//        translate([0, 3, 1])
//            rotate([0, 0, 0])
//                arduinoMega();
//    }
//    translate([105, 100])
//        color("blue")
//            modulePlate(60, 60);
//
//
//    translate([-10, 200]) {
//        color("yellow")
//            modulePlate(70, 60);
//        
//        translate([0, 3, 1])
//            rotate([0, 0, 0])
//                arduinoUno();
//    }
//
//    translate([65, 200])
//        color("blue")
//            modulePlate(100, 60);


//    translate([0, 30]) {
//        color("yellow")
//            modulePlate(120, 60);
//        
//        translate([10, 3, 1])
//            rotate([0, 0, 0])
//                arduinoMega();
//    }


}


//basePlateWithSliders(190,170);
//basePlate(190,170);

//translate([0, 0, 5.1])
//    rotate([120,0,180])
//        translate([-95,0])
//        color("green")
//            controlPanelWithLcd(190, 80);
     
//controlPanel(190, 80);
