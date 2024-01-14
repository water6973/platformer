image_speed = 0;

if (_type == 0){
	image_index = 0; // PORTAL
} else if (_type == 1){
	image_index = 1; // flickering laser
	timer = 0;
	is_firing = true;
} else if (_type == 2){
	image_index = 2; // constant laser
} else {
	image_index = 3; // off
}

