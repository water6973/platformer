
if(instance_number(obj_player)>1){
	if(!instance_exists(obj_midplayers)){
		instance_create_layer(x,y,"Player",obj_midplayers);
	}
	global.camfollow=obj_midplayers;
}
else{
global.camfollow=obj_player;	
}