render()
difference () {
    resize(newsize=[32,12,2.7])
    minkowski() {
        translate([0,0,1.35])
        cube([32,12,2.7],center=true);
        
        cylinder(r=2,h=10,$fn=40);
    }
    
    translate([0,0,0.3])
    scale([0.5,0.5,3])
    linear_extrude(1)
    text(text = "I love you", halign = "center");
}

translate([0,20,0])
resize(newsize=[32,12,0.3])
minkowski() {
    cube([32,12,0.3],center=true);
    
    cylinder(r=2,h=10,$fn=40);
}

for(i=[0:1]) {
    translate([-18.5,i*20,0])
    difference() {
        cylinder(d=7,h=-2.4*i+2.7,$fn=75);
        
        translate([0,0,-5])
        cylinder(d=4.5,h=10,$fn=50);
    }
}

translate([11.5,15,0.3])
scale([0.2,0.2,0.45])
linear_extrude(1)
text(text = "Bas", size=14, font="Impact:style=Bold", halign = "center");