
speed=16;
image_alpha=1;
image_angle=direction;

if((instance_place(x,y,obj_platforms) || distance_to_object(obj_player)>800)){ // !!!
	instance_destroy();
}