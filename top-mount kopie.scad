$fn=100;

boolOpOffset1 = $preview ? 0.01 : 0;
boolOpOffset2 = $preview ? 0.02 : 0;


//rotate([0, 0, 90])
//	translate([6, -7.35, -1.35])
//		import("/Users/benmens/Downloads/Cable_chain 2/cablechain-1.STL");
//
//translate([0, -30, 0])
//	cube([60, 60, 5]);
//
//translate([0, 6, 5])
//	cube([25, 4, 11.4]);
//
//translate([40, -30, 5])
//	cube([4, 40, 11.4]);
//
//translate([25, 4, 5])
//difference() {
//	cylinder(11.4, 6, 6);
//	
//	translate([ 0, 0, -boolOpOffset])
//		cylinder(12, 2, 2);
//	
//	translate([-14, -18, -boolOpOffset])
//		cube([14, 28, 12]);
//
//	translate([-14, -14, -boolOpOffset])
//		cube([28, 14, 12]);
//}
//
//
//translate([0, 20, 5])
//	cube([30, 4, 11.4]);
//
//translate([27, -30, 5])
//	cube([4, 34, 11.4]);
//
//
//translate([30, 10, 5])
//difference() {
//	cylinder(11.4, 14, 14);
//	
//	translate([ 0, 0, -boolOpOffset])
//		cylinder(12, 10, 10);
//	
//	translate([-14, -18, -boolOpOffset])
//		cube([14, 28, 12]);
//
//	translate([-14, -14, -boolOpOffset])
//		cube([28, 14, 12]);
//}

thickness = 2;

difference() {
	
	union() {
	
		difference() {
			cube([65, 85, thickness]);
			
			translate([39.5, -boolOpOffset1, -boolOpOffset1])
				cube([26 + boolOpOffset1, 52 + boolOpOffset1, thickness + boolOpOffset2]);
			
			translate([65 -4.5 - 9, 79 + boolOpOffset1, -boolOpOffset1])
				cube([9, 6, thickness + boolOpOffset2]);
			
			translate([-boolOpOffset1, 43, -boolOpOffset1])
				cube([10, 9, thickness + boolOpOffset2]);
			
			translate([39, 43, -boolOpOffset1])
				cube([10, 9, thickness + boolOpOffset2]);
			
			translate([47, 85, -boolOpOffset1]) rotate([0, 0, 120]) cube([65, 85, thickness  +boolOpOffset2]);
			}

			translate([39.5, 0, 0]) cube([10, 43, thickness]);
		}
	
		
		translate([17, 9, -boolOpOffset1]) cylinder(thickness + boolOpOffset2, 5.5, 5.5);

		translate([16 + 17 + 4.5, 8, -boolOpOffset1]) cylinder(thickness + boolOpOffset2, 5, 5);
		
		translate([24.5, 43 + 4.5, -boolOpOffset1]) cylinder(thickness + boolOpOffset2, 1.6, 1.6);

		translate([65 -4.5 - 4.5, 70, -boolOpOffset1]) cylinder(thickness + boolOpOffset2, 1.6, 1.6);
	
		translate([0 - boolOpOffset1, 0 - boolOpOffset1, -boolOpOffset1]) difference() {
			cube([10 + boolOpOffset1, 10 + boolOpOffset1, thickness + boolOpOffset2]);
			
			translate([10, 10, 0])
				cylinder(thickness + boolOpOffset1, 10, 10);
		}

		translate([39.5 + boolOpOffset1, 0 - boolOpOffset1, -boolOpOffset1]) difference() {
			cube([10 + boolOpOffset1, 10 + boolOpOffset1, thickness + boolOpOffset2]);
			
			translate([0, 10, 0])
				cylinder(thickness + boolOpOffset1, 10, 10);
		}

	}


translate([4, 0, 0])
difference() {
//	translate([38.15, 20, 17.75 + thickness])
//		rotate([0, 180, 270])
	
	translate([42.7, 25, 13.2 + thickness])
		rotate([0, 180, 270])		
			import("/Users/benmens/Downloads/Cable_Chain/CableChain.stl");

	translate([28, 10, thickness + boolOpOffset1])
		cube([11, 30, 16]);
	
	
}
	

module corner(r, h, d) {
	
	difference() {
		cylinder(h, r, r);

		translate([0, 0, -boolOpOffset1])
			cylinder(h + boolOpOffset2, r-d, r-d);
		
		translate([-r - boolOpOffset1 , 0, -boolOpOffset1])
			cube([2*r + boolOpOffset2, r + boolOpOffset1, h + boolOpOffset2]);

		translate([0, -r - boolOpOffset1, -boolOpOffset1])
			cube([r + boolOpOffset2, 2*r + boolOpOffset1, h + boolOpOffset2]);
	}
		
	
}

translate([40, 32.2, thickness])
	cube([9.5, 4, 13.2]);

translate([40, 42.2, thickness])
	corner(10, 13.2, 4);

translate([30, 42.2, thickness])
	cube([4, 31, 13.2]);


translate([22, 13.77, thickness])
	cube([27.4, 4, 13.2]);

translate([22, 23.77, thickness])
	corner(10, 13.2, 4);

translate([12, 23.77, thickness])
	cube([4, 38, 13.2]);

