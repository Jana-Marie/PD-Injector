$fn = 100;

translate([30,0,0])
mirror([1,0,0])
upperHalf();

lowerHalf();

module lowerHalf(){
    length = 23;
    width = 10;
    height = 3;
    pcbHeight = 0.65;
    rad = 1;
    thicknessL = 2;
    thicknessW = 5;
    difference(){
        union(){
            
            // Main Cube
            translate([0,0,-height/2])
            minkowski(){
                cube([length-(rad*2)+(thicknessL*2),width-(rad*2)+(thicknessW*2),height],center=true);
                cylinder(h=0.01,r=rad);
            }
            
        }union(){
            
            // PCB Cutout
            minkowski(){
                cube([length-(rad*2),width-(rad*2),pcbHeight/2],center=true);
                cylinder(h=0.01,r=rad);
            }
            
            // Data and Power input
            rotate([90,0,0])
            translate([6.955,0,4.7])
            cutout(5.6);
            rotate([90,0,0])
            translate([-6.955,0,4.7])
            cutout(5.6);
            
            // Output
            rotate([-90,0,0])
            translate([6.955,0,4.7])
            cutout(5.6);
            rotate([-90,0,0])
            translate([6.955,0,3.2])
            cutout2(5.5);
            
            // Screw cutout
            translate([-7.66,1.16,-height-0.01])
            cylinder(d=3.1,h=height);
            translate([-7.66,1.16,-height-0.01])
            cylinder(d1=4.2,d2=0,h=2);
        }
    }
}

module upperHalf(){
    length = 23;
    width = 10;
    height = 3;
    pcbHeight = 0.65;
    rad = 1;
    thicknessL = 2;
    thicknessW = 5;
    difference(){
        union(){
            
            // Main Cube
            translate([0,0,-height/2])
            minkowski(){
                cube([length-(rad*2)+(thicknessL*2),width-(rad*2)+(thicknessW*2),height],center=true);
                cylinder(h=0.01,r=rad);
            }
           
            
        }union(){
            
            // PCB Cutout
            minkowski(){
                cube([length-(rad*2),width-(rad*2),pcbHeight/2],center=true);
                cylinder(h=0.01,r=rad);
            }
            
            // Data and Power input
            rotate([90,0,0])
            translate([6.955,0,4.7])
            cutout(5.6);
            rotate([90,0,0])
            translate([-6.955,0,4.7])
            cutout(5.6);
            
            // Cutout for the smd resistors
            translate([7,1,-0.65])
            cube([4.5,4.5,1.3],center=true);
            
            // Output
            rotate([-90,0,0])
            translate([6.955,0,4.7])
            cutout(5.6);
            rotate([-90,0,0])
            translate([6.955,0,3.2])
            cutout2(5.5);
            
            // text
            translate([0,0,+0.3])
            textStamp(3);
        }
    }
    difference(){
        union(){
            // Screw standout
            translate([-7.66,1.16,-height+0.5])
            cylinder(d=3,h=(height*2)-1);
        } union(){
            // Screw cutout
            translate([-7.66,1.16,-height+0.5])
            cylinder(d=0.4,h=(height*2)-1);
        }
    }
}

module textStamp(height = 1){
    translate([-10,0.4,0])
    union(){
        translate([0,0,-height-0.5])
        color("blue")
        linear_extrude(height = 0.5){
            text("USB-PD Power", font = "Liberation Sans",size = 2);
        }
        translate([0,-3,-height-0.5])
        color("blue")
        linear_extrude(height = 0.5){
            text("Injector", font = "Liberation Sans",size = 2);
        }
    }
    
    translate([-10,-8,-height-0.5])
    color("blue")
    linear_extrude(height = 0.5){
        text("power", font = "Liberation Sans",size = 1.5);
    }   

    translate([5,-8,-height-0.5])
    color("blue")
    linear_extrude(height = 0.5){
        text("data", font = "Liberation Sans",size = 1.5);
    }      
    
    rotate([0,0,180])
    translate([-8.5,-8,-height-0.5])
    color("blue")
    linear_extrude(height = 0.5){
        text("out", font = "Liberation Sans",size = 1.5);
    }
}
module cutout(length = 10){
    union(){
        hull(){
            for(i = [-1:2:1]){
                translate([i*2.89,0,0])
                cylinder(d=2.54,h=length);
            }
        }
    }
}

module cutout2(length = 10){
    union(){
        hull(){
            for(i = [-1:2:1]){
                translate([i*2.67,0,0])
                cylinder(d=3.86,h=length);
            }
        }
    }
}