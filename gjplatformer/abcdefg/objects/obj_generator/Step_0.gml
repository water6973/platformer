image_angle=direction
if (_type == 0){
	image_index = 0; // PORTAL
	instance_create_layer(x,y,"Instances",obj_portal).direction=direction
} else if (_type == 1){
	image_index = 1; // flickering laser
} else {
	image_index = 2; // constant laser
} 