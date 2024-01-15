if (instance_place(x,y,obj_player)){
obj_player.x=global.checkpt[0];
obj_player.y=global.checkpt[1];
global.deaths+=1;
}

speed=16;
image_alpha=1;
image_angle=direction;

if((instance_place(x,y,obj_platforms) || distance_to_object(obj_player)>800) && !instance_place(x,y,obj_generator)){ // !!!
	instance_destroy();
}

if(instance_place(x,y,obj_generator)){
	image_alpha = 0;
}