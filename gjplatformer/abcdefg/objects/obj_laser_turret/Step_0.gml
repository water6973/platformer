timer-=1;

image_angle=direction;

if(firing == 0){
	var _gg = instance_create_layer(x,y,"Instances",obj_laser_warn);
	_gg.direction=direction;
	_gg.tt=id;
}
else{
	_laser = instance_create_layer(x,y,"Instances",obj_laser);
}

if(timer<=48 && timer>=0){
firing=1;	
}
else{
firing=0;	
}