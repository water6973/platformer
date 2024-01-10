timer-=1

if(timer<=0){
	timer=64;
	instance_create_layer(x,y,"Instances",obj_bullet).direction=direction;
}