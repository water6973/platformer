if (instance_place(x,y,obj_player)){
	isExploding = true; // starts a timer to explode if mine is touched
}

if(isExploding){
	if (timer >= 0){
		timer -= 1;
		if (timer%5 == 0){
			image_index = 1-image_index; // CHATGPT PULLED THROUGH, THIS IS CRAZY
		}
	} else {
		instance_create_layer(x,y,"Instances",obj_explosion); // explodes when timer runs out :(
	}
} 
