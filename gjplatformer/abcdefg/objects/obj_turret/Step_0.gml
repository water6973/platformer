timer-=1

image_angle=direction;

if(timer<=0){
	timer=64;
	instance_create_layer(x,y,"Instances",obj_bullet).direction=direction;
}