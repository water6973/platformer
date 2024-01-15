image_angle=direction
if (_type == 0){
	image_index = 0; // PORTAL
	instance_create_layer(x,y,"Instances",obj_portal).direction=direction
} else if (_type == 1){
	image_index = 3; // flickering laser
	timer -= 1;
	if (timer < 0){
		// When timer ticks down to 0, shoot green laser out
		image_index = 1;
		var _laser = instance_create_layer(x,y,"Instances",obj_laser);
		_laser.direction = direction;
		_laser.image_index = 1;
	} else {
		// If timer is still ticking, have an empty generator and a warning laser
		image_index = 3;
	}
	
	if (timer < -250){
		// Reset timer after 250 ticks
		timer = 128;
	}
} else {
	image_index = 2; // constant laser
	var _laser = instance_create_layer(x,y,"Instances",obj_laser);
	_laser.direction = direction;
	_laser.image_index = 2;
} 