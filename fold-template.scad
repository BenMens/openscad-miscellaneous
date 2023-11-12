inch = 25.4;
$fn = 40;

width = 20;
length = 20;


//difference() {
//	
//	cube ([width * inch / 10, length * inch / 10, 1]);
//
//	translate([inch/10, inch/10, 0])
//		for (x = [0: 2: width-1]) {
//
//			for (y = [0: 2: length-1]) {
//				
//				translate([x*inch/10, y*inch/10, -1])
//					cylinder(10, 0.4, 0.4);
//				
//			}
//		}
//}
//
//
//translate([inch/10, inch/10, 0])
//for (x = [1: 2: width - 2]) {
//
//	for (y = [1: 2: length - 2]) {
//		
//		translate([x*inch/10, y*inch/10, 0])
//			cylinder(3, 1.5, 1.5);
//		
//	}
//}



difference() {
	
	union() {
		translate([ 0, - inch/5, 0])
			cube ([width * inch / 10, inch / 5, 2]);
		
		for (x = [0: 2 : width - 1]) {
			translate([ ( x  ) * inch/10, 0, 0])
				cube ([2 * inch / 10, (x * inch / 20)  , 2]);
		}
		
		translate([inch/20 - 1.85, inch/10 - inch/5 + 1.85, 0])
		for (x = [1: 2 : width]) {
					translate([x * inch/10 , 0 , 0]) 
						union() {
							#cylinder(5, 1, 1);
							
							cube([1, 2, 5]);
							
							translate([-2, -1, 0])
								cube([2, 3, 5]);
						}
		}

	}
	
	translate([inch/20, inch/10 - inch/5, 0])
		for (x = [0: 1: width-1]) {
				
				translate([x*inch/10, 0, -1])
					cylinder(10, 0.5, 0.5);
		}


	translate([inch/20, inch/10 - inch/5, 0])
	for (x = [1: 2 : width]) {
				translate([x * inch/10 , (x+1) * inch / 20 , -1])
					cylinder(10, 0.5, 0.5);
	}
	
}


