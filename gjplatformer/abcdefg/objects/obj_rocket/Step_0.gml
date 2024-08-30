speed=4;
direction=point_direction(x,y,obj_player.x,obj_player.y);
image_angle=direction;
if(instance_place(x,y,obj_player)||instance_place(x,y,obj_platforms)){
	instance_destroy();	
}