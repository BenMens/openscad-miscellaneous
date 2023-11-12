$fn = 50;
h = 11;

minkowski() {
	cube([15, 0.1, h]);
	
	cylinder(0.01, 1, 1, center=true);
}


minkowski() {
	cube([0.1, 25, h]);
	
	cylinder(0.01, 1, 1, center=true);
}



translate([-2.9, 25, 0]) {
	difference() {
		cylinder(h, 4, 4);
		
		translate([0, 0, -0.5])
			cylinder(h+1, 1.9, 1.9);
	
		translate([0, -5, -0.5])
			cube([1.9, 5, h+1]);

		translate([0, 0, -0.5])
			linear_extrude(height=h+1)
				polygon([[0,0], [0, -10], [-10, -10], [-10, tan(35) * 10]]);		
	}
	
}


translate([-8.5, 23, 0])
rotate([0, 0, -40])
minkowski() {
	cube([0.1, 5, h]);
	
	cylinder(0.01, 1, 1, center=true);
}


translate([15, 0, 0])
	rotate([0, 0, -60])
	minkowski() {
		cube([7, 0.1, h]);
		
		cylinder(0.01, 1, 1, center=true);
	}
	
	
translate([18.5, -6.1, 0])
	rotate([0, 0, 10])
	minkowski() {
		cube([5.5, 0.1, h]);
		
		cylinder(0.01, 1, 1, center=true);
	}
	
	
translate([20.3, 1.2, 0])
	rotate([0, 0, -60])
	minkowski() {
		cube([7, 0.1, h]);
		
		cylinder(0.01, 1, 1, center=true);
	}
