image_angle=direction;

if (_type == 0){
	instance_create_layer(x,y,"Instances",obj_portal).direction=direction;
} else if (_type == 1){
	timer-=1;
}

/*

CORDONED OFF -  COMMITTEE OF PUBLIC SAFETY

if (_type == 0){
	image_index = 0; // PORTAL
} else if (_type == 1){
	image_index = 1; // flickering laser
} else {
	image_index = 2; // constant laser
}

CORDONED OFF -  COMMITTEE OF PUBLIC SAFETY

/*
