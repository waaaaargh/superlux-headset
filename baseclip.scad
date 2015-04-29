$fn = 100;
hole_radius = 1.55;
external_diameter = 11.0;
plate_length = 25.0;
plate_thickness = 3;

difference() {
     linear_extrude(height=plate_thickness) union () {
	  circle(5);
	  translate([0,plate_length, 0]) circle(5);
	  translate([-5,0,0]) scale([1,plate_length/10,1]) square(10);
     }

     translate([-6,(plate_length-external_diameter)/2+hole_radius,plate_thickness-0.5*hole_radius])
	  rotate([0,90,0])
	  linear_extrude(height=12)
	  circle(hole_radius);

     translate([-6,plate_length-((plate_length-external_diameter)/2)-hole_radius,plate_thickness-0.5*hole_radius])
	  rotate([0,90,0])
	  linear_extrude(height=12)
	  circle(hole_radius);

     translate([0,0,-0.1]) linear_extrude(height=plate_thickness+0.2) circle(3);
}

