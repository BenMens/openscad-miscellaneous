thickness = 0.8;

difference() {
  cube([40, 25, 5]);
  
  translate([thickness, thickness, thickness])
    cube([40 - 2 * thickness, 25 - 2 * thickness, 6]);
}