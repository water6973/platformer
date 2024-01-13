if (instance_place(x,y,obj_player) or instance_place(x,y,obj_explosion)){
	isExploding = true; // starts a timer to explode if mine is touched
}

if(isExploding){
	if (timer >= 0){
		timer -= 1;
		if (timer%10 == 0){
			image_index = 1-image_index; // CHATGPT PULLED THROUGH, THIS IS CRAZY
		}
	} else {
		y-=20; // moves the mine upwards so that the explosion lines up with the ground
		x-=10;
		instance_create_layer(x,y,"Instances",obj_explosion); // explodes when timer runs out :(
		instance_destroy();
	}
} 
