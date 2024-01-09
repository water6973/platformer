	#region control settings

/*
0=interact
1=jump
2=right
3=left
4=up
5=down
*/

global.controls=[];
global.controls[0]=ord("Z");
global.controls[1]=ord("X");
global.controls[2]=vk_right;
global.controls[3]=vk_left;
global.controls[4]=vk_up;
global.controls[5]=vk_down;

#endregion

#region movement

xspd=(keyboard_check(global.controls[2])-keyboard_check(global.controls[3]))*movespd;
yspd+=grav;

if (!keyboard_check(global.controls[1])){jumpspd=0}

if (keyboard_check_pressed(global.controls[1]) && instance_place(x,y+1,obj_platforms))
{
jumpspd=-5;
};
if (keyboard_check(global.controls[1])&&jumpspd<0) {
jumpspd+=-((jumpspd-0.3)/30)+0.15;
yspd=jumpspd;
}

if (instance_place(x+xspd,y,obj_platforms))
{
	var pxcheck=sign(xspd)
	while (!instance_place(x+pxcheck,y,obj_platforms))
	{
	x+=pxcheck;
	}
	
	xspd=0
}

if (instance_place(x+xspd,y+yspd,obj_platforms))
{
	var pxcheck=sign(yspd)
	while (!instance_place(x+xspd,y+pxcheck,obj_platforms))
	{
	y+=pxcheck;	
	}	
	yspd=0;
}

x+=xspd;
y+=yspd;

#endregion

if keyboard_check_pressed(ord("R")){room_restart()}