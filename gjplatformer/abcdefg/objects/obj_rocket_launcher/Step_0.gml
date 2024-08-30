direction=point_direction(x,y,obj_player.x,obj_player.y);
image_angle=direction;

timer--;

if(timer<=0){
timer=120;
instance_create_layer(x,y,"Instances",obj_rocket);
}