module wiel() {
    color("lime") {
        difference() {
            translate ([0,0,-0.505])
            cylinder(d=8.8,h=1.01,$fn=50);
        
            translate([0,0,-1.5])
            cylinder(d=6.5,h=2.6,$fn=50);
        }
    
        for(i=[0:4]) {
            rotate([0,0,360/5*i])
            translate([1.5,0,0])
            cube([4.5,1,1.01],center=true);
        }
    }
}

module frame() {
    color("blue") {
        translate([0,0,-0.5])
        cylinder(r=0.5,h=1,$fn=20);
        
        translate([4,4,0])
        rotate([0,0,-45])   
        cube([1,11.313,1],center=true);
        
        translate([4,-4,0])
        rotate([0,0,-45])
        cube([1,11.313,1],center=true);
        
        translate([0,-4,0])
        cube([1,8,1],center=true);
        
        translate([4,0,0])
        cube([8,1,1],center=true);
        
        translate([8,4,0])
        cube([1,8,1],center=true);
        
        translate([6,8,0])
        cube([12,1,1],center=true);
        
        translate([8.75,0,0])
        cube([1.5,1,1],center=true);
        
        translate([10,-0.1,0])
        cube([1,2.5,1],center=true);
    }
}

module platvorm() {
    color("yellow") {
        cube([9,24,1.5],center=true);
    }
}

module stuur() {
    color("red") {
        cube([1,7.5,1],center=true);
    }
}

module boek() {
    color("blue") 
    difference() {
        translate([0,0,5.5])
        cube([13.5,5,11],center=true);
        
        translate([0,0,8.5])
        cube([14,3,15],center=true);
    }
    
    color("lime")
    translate([0,0,5.5])
    cube([11.5,3,9],center=true);
}

module potlood() {
    color("blue") {
        difference() {
            cylinder(r=2,h=20,$fn=7);
            
            difference() {
                translate([0,0,19])
                cube([5,5,6],center=true);
                
                translate([0,0,16])
                cylinder(r1=2,r2=0.6,h=2.8,$fn=20);
                
                translate([0,0,18.8])
                cylinder(r1=0.5,r2=0,h=1,$fn=20);
            }
        }
    }
}

module gum() {
    color("blue") {
        translate([0,0,3])
        resize(newsize=[12.5,10,6])
        minkowski() {
            cube ([12.5,10,6],center=true);
            
            sphere(r=1.5,$fn=35);
        }
    }
}

module liniaal() {
    color("blue") 
    translate([0,0,1.5])
    rotate([90,0,0])
    scale([1,1,33])
    polygon(points=[[5,-1.5],[-5,-1.5],[-5,1.5],[0,1.5],[5,0]]);
        
    for(i=[0:2:30]) {
        if(i%10==0) {
            color("red") 
            translate([2.5,-15+1*i,2.25])
            cube([5,0.8,1.5],center=true);
            
            color("lime")
            translate([-0.5,-15+1*i,3.125])
            scale([0.22,0.2,0.25])
            rotate([0,0,90])
            text(str(i),halign="center",font = "Liberation Sans:style=Bold");
        } else {
            color("yellow")
            translate([3,-15+1*i,2])
            cube([4,0.6,1.1],center=true);   
        }
    }
}

module schaar() {
    for(i=[0:1]) {
        rotate([0,180*i,0]) {
            translate([14*i-3,5*i-2.5,-0.5*i])
            color("blue")
            difference() {
                hull() {
                    translate([-10,0,0])
                    cylinder(d=2,h=0.5,$fn=40);
                    
                    translate([0,0,0])
                    cylinder(d=3,h=0.5,$fn=50);
                }
                            
                hull() {
                    translate([-1,-3*i+1.5,-0.25])
                    cylinder(d=1.5,h=1,$fn=50);
                    
                    translate([-12,-3.2*i+1.6,-0.25])
                    cylinder(d=2,h=1,$fn=50);
                }
                
                translate([3,0,2])
                cube([6,6,6],center=true);
                
                if(i==1) {
                    for(j=[0:2]) {
                        translate([-3*j-2,0,-0.1])
                        cylinder(d=0.6,h=0.3,$fn=25);
                    }
                }
            }
            
            color("lime") {
                if(i==0) {
                    for(j=[0:2]) {
                        translate([-3*j-5,-2.5,0.5])
                        cylinder(d=0.5,h=0.2,$fn=25);
                    }
                }
                
                translate([14*i-12.5,-5*i+2.5,-0.5*i+0.25])
                cube([3,3,0.501],center=true);
                
                translate([14*i-12.5,-5*i+2.5,0.4*i-0.2])
                difference() {
                    sphere(d=2.8,h=0.5,$fn=75);
                    
                    translate([0,0,3*i-1.5])
                    cube([4,4,4],center=true);
                }
            }
        }
    }
}

module fiets() {
    scale([0.8,0.8,0.8]) {
        translate([0,0,0.5])
        frame();
        translate([0,8,0.5])
        rotate([0,0,15])
        wiel();
        translate([0,-8,0.5])
        rotate([0,0,50])
        wiel();
        translate([25,0,0.75])
        platvorm();
        translate([15,0,0.5])
        stuur();
    }
}

for(i=[0:3]) {
    for(j=[0:3]) {
        translate([30*i-34.5,30*j-34.5,0])
        fiets();
    }
}