$fn=100;

rotate([90, 0, 0])
translate([-5, 0, 0]) {	
	difference() {
		
		union() {
			
			translate([-5, 0, 0])
			cube([20,4,20]);
			
			cube([10,12,4]);

			translate([5, 12, 0])
					cylinder(4,5,5);
			}

		translate([5, 12, -1])
				cylinder(6,1.55,1.55);

		translate([10, 5, 10])
				rotate([90, 0, 0])
					cylinder(6,1.8,1.8);

		translate([0, 5, 15])
				rotate([90, 0, 0])
					cylinder(6,1.8,1.8);

		}
}
	

translate([-25, 5, 0]) {
	
	difference() {
		union() {
			translate([5, 0, 0])
				cylinder(4,5,5);
			cube([10,15,4]);
			
			translate([2, 5, 0])
				cube([3,10,12]);

			translate([2, 10, 12])
				rotate([0,90])
					cylinder(3,5,5);
			}
			
			translate([1, 10, 12])
				rotate([0,90])
					cylinder(6,1.55,1.55);

			translate([5, 0, -1])
					cylinder(6,1.55,1.55);
			
		}		
}


module p2() {
	difference() {
		
		union() {
			cube([3.2,20,10]);

			translate([0, 20, 5])
				rotate([0,90])
					cylinder(3.2,5,5);
				}
				
			translate([-1, 20, 5])
				rotate([0,90])
					cylinder(5,1.7,1.7);
			}
}

rotate([90, 0, 0])
translate([-50, 0, 0]) {

	translate([-13.5, 0, 0])
			cube([27,1.8,20]);

	translate([-12, 1, 0])
			cube([24,2,20]);
	
	translate([-3.3, 0, 0])
		p2();
	
	difference() {
		translate([-0.1, 0, 0])
			cube([3.2, 20, 10]);

		translate([-0.1, 20, 5])
			rotate([0, 90, 0])
				cylinder(4, 6, 6);
	}

	
}
