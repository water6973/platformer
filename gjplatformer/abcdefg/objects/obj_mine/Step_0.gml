if (instance_place(x,y,obj_player) || instance_place(x,y,obj_explosion)){
	isExploding = true; // starts a timer to explode if mine is touched
}

if(isExploding){
	image_speed=1;
	timer-=1;
	if(timer<=0){
		instance_create_layer(x+4,y+4,"Instances",obj_explosion); // explodes when timer runs out :(
		instance_destroy();
	}
} 
