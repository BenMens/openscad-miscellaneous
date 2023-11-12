use <libraries/enclosure/helpers.scad>
use <libraries/enclosure/components.scad>
use <libraries/enclosure/dc-jack-socket.scad>
use <libraries/enclosure/round-casing.scad>
use <libraries/enclosure/circuit-board-7x5.scad>
use <libraries/enclosure/p9813.scad>
use <libraries/enclosure/cableFix.scad>
use <libraries/enclosure/smart-led.scad>


$fn = 50;

w = 90;
l = 120;
h = 35;


module caseComponents() {
    roundCaseInner(w, l);

    translate([10, 57, 0])
        circuitBoard7x5();       

    translate([25, 40, 0])
        rotate([0, 0, -90])
            p9813();       
    
    translate([0, 23, 0])
        cableFix();

    translate([0, 22, 0]) {
        rotate([0, 0, -90]) 
            dcJackSocket();
    }

    if ($componentMode == 0) {
    } else if ($componentMode == 1) {
    } else if ($componentMode == 2) {
    }
}

module caseCover() {
    roundCaseOuter(w, l, h);

    translate([79, 41, 32]) 
        rotate([180, 0, 0]) {
            translate([0, 0, 0])
                smartLed();

            translate([0, 10, 0])
                smartLed();

            translate([0, 20, 0])
                smartLed();
        }

    if ($componentMode == 1) {
        caseComponents();
    }
}


difference() {
    drawComponents() {

        caseComponents();

        caseCover();

    }

    *translate([-50, -50, 10])
        cube([100, 100, 100]);
}
