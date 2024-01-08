if (global.camfollow != noone){
	xto=global.camfollow.x;
	yto=global.camy;
}

x+=(xto-x)/24;
y+=(yto-y)/24;

#region cam borders
if (x<=0+(0.5*camw)){x=0+(0.5*camw)}
if (x>=room_width-(0.5*camw)){x=room_width-(0.5*camw)}
if (y<=0+(0.5*camh)){y=0+(0.5*camw)}
if (y>=room_height-(0.5*camw)){x=room_width-(0.5*camw)}
#endregion

camera_set_view_pos(view_camera[0],x-(camw*0.5),y-(camh*0.5));

surface_resize(application_surface,camera_get_view_width(view_camera[0])*2.0, camera_get_view_height(view_camera[0])*2.0);

