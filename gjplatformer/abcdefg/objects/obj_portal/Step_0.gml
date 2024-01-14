image_angle=direction;

speed=1;
if(instance_place(x,y,obj_generator)){
image_alpha=0;	
}
else{
image_alpha=1;	
if(instance_place(x,y,obj_platforms)){
instance_destroy();
}
}

