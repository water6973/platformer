image_alpha=1;
image_angle=direction;
if(instance_place(x,y,obj_player)&&image_index==0){
	tt.timer=64;
}

if(instance_place(x,y,obj_platforms) || distance_to_object(obj_player)>800){
	instance_destroy();
}

if(tt.timer>=0){
image_index=1;
}

if(tt.firing==1){
instance_destroy();
}