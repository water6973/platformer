 if (global.camfollow != noone){
	xto=global.camfollow.x;
	yto=global.camy;
}

if(distance_to_object(obj_player)>128){
cspd=8;	
}
else if(distance_to_object(obj_player)>64){
cspd=16;	
}
else {
cspd=24;	
}

x+=(xto-x)/cspd;
y+=(yto-y)/cspd;

#region cam borders
if (x<=0+(0.5*camw)){x=0+(0.5*camw)}
if (x>=room_width-(0.5*camw)){x=room_width-(0.5*camw)}
if (y<=0+(0.5*camh)){y=0+(0.5*camh)}
if (y>=room_height-(0.5*camh)){y=room_height-(0.5*camh)}
#endregion

camera_set_view_pos(view_camera[0],x-(camw*0.5),y-(camh*0.5));

surface_resize(application_surface,camera_get_view_width(view_camera[0])*10.0, camera_get_view_height(view_camera[0])*10.0);

