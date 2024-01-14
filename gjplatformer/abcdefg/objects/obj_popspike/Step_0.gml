
if(trigger==true){
timer+=1;
}

if(instance_place(x,y,obj_player)){
trigger=true;
if(timer>=16){
obj_player.x=global.checkpt[0];
obj_player.y=global.checkpt[1];
global.deaths+=1;
}
}

if(timer>=16){
	image_speed=1;
}
if(image_index==0 && timer>=20){
trigger=false;
timer=0;
image_speed=0;
}