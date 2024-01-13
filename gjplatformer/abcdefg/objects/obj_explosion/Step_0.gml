if (instance_place(x,y,obj_player)){
	obj_player.x=global.checkpt[0];
	obj_player.y=global.checkpt[1];
	global.deaths+=1;
}

timer -= 1;

if (timer < 0){
	instance_destroy();
}




