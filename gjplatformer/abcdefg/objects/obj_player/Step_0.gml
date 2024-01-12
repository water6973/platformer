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
if(!keyboard_check(global.controls[2]) && !keyboard_check(global.controls[3])){
	if(xspd<=0.1){xspd=0}
}
xspd-=0.5*sign(xspd);
xspd+=jumpboost*0.5*(keyboard_check(global.controls[2])-keyboard_check(global.controls[3]))*movespd;

if(keyboard_check(global.controls[5])){
xspd+=0.1*sign(xspd)	
}

yspd+=grav;
if(jumpboost==1){
if(xspd>=movespd){xspd=movespd}
if(xspd<=-movespd){xspd=-movespd}
}

if (!keyboard_check(global.controls[1])){jumpspd=0}

if (keyboard_check_pressed(global.controls[1]) && instance_place(x,y+1,obj_platforms))
{
jumpspd=-5;
jumpboost=2;
}
else{
jumpboost=1;	
}
if (keyboard_check(global.controls[1])&&jumpspd<0) {
jumpspd+=-((jumpspd-0.3)/30)+0.15;
yspd=jumpspd;
}

if (instance_place(x+xspd,y,obj_platforms))
{
	var _pxcheck=sign(xspd)
	while (!instance_place(x+_pxcheck,y,obj_platforms))
	{
	x+=_pxcheck;
	}
	
	xspd=0
}

if (instance_place(x+xspd,y+yspd,obj_platforms))
{
	var _pxcheck=sign(yspd)
	while (!instance_place(x+xspd,y+_pxcheck,obj_platforms))
	{
	y+=_pxcheck;	
	}	
	yspd=0;
}

x+=xspd;
y+=yspd;

#endregion

if keyboard_check_pressed(ord("R")){
obj_player.x=global.checkpt[0];
obj_player.y=global.checkpt[1];
}

#region state machine
//checking
if((yspd>0.1)){
	if(	
	keyboard_check(vk_nokey) 	
	||   ((keyboard_check(global.controls[4]) || keyboard_check(global.controls[1]) ) 
	&& (!keyboard_check(global.controls[2]) && !keyboard_check(global.controls[3]) )
	) ){
		state="falldown";
	}
	else if(keyboard_check(global.controls[2])&& !keyboard_check(global.controls[3])){
		state="fallright";
	}
	else if(keyboard_check(global.controls[3])&& !keyboard_check(global.controls[2])){
		state="fallleft";
	}
	else{
	state="falldown";	
	}
}
else if(keyboard_check(vk_nokey)
	|| (keyboard_check(global.controls[2]) && keyboard_check(global.controls[3])) ){
state="idle";
}else if(keyboard_check(global.controls[1])){
	if(
	(!keyboard_check(global.controls[2]) && !keyboard_check(global.controls[3]))
	||(keyboard_check(global.controls[2]) && keyboard_check(global.controls[3])) ){
		state="jumpup";	
	}else if(keyboard_check(global.controls[2]) && !keyboard_check(global.controls[3])){
		state="jumpright";	
	}
	else if(!keyboard_check(global.controls[2]) && keyboard_check(global.controls[3])){
		state="jumpleft";	
	}
}else if(keyboard_check(global.controls[2]) && !keyboard_check(global.controls[3])){
	if(keyboard_check(global.controls[5])){
	state="slideright"	
	}
	 else{
		state="runright";
	}
}
else if(keyboard_check(global.controls[3]) && !keyboard_check(global.controls[2])){
if(keyboard_check(global.controls[5])){
	state="slideleft"	
	}
	else{
	state="runleft";
	}
}
else{
state="bidk";	
}

//doing
if(state=="idle"){
	sprite_index=spr_player_idle;
}
else if(state=="jumpup"){
	if(sprite_index!=spr_player_jump){image_index=0}
	if(keyboard_check(global.controls[1])&& instance_place(x,y-1,obj_platforms)){image_index=5}
	sprite_index=spr_player_jump;
	if(image_index>=5){image_index=5}
}
else if(state=="jumpright"){
	if(sprite_index!=spr_player_jump_right){image_index=0}
	if(keyboard_check(global.controls[1])&& instance_place(x,y-1,obj_platforms)){image_index=5}
	sprite_index=spr_player_jump_right;
	if(image_index>=5){image_index=5}
}
else if(state=="jumpleft"){
	if(sprite_index!=spr_player_jump_left){image_index=0}
	if(keyboard_check(global.controls[1])&& instance_place(x,y-1,obj_platforms)){image_index=5}
	sprite_index=spr_player_jump_left;
	if(image_index>=5){image_index=5}
}
else if(state=="runright"){
	sprite_index=spr_player_idle;
}
else if(state=="runleft"){
	sprite_index=spr_player_idle;
}
else if(state=="slideright"){
	if(sprite_index!=spr_player_slide_right){image_index=0}
	sprite_index=spr_player_slide_right;
	if(image_index>=3){image_index=3}
}
else if(state=="slideleft"){
	if(sprite_index!=spr_player_slide_left){image_index=0}
	sprite_index=spr_player_slide_left;
	if(image_index>=3){image_index=3}
}
else if(state=="falldown"){
	if(sprite_index!=spr_player_fall_down){image_index=0}
	sprite_index=spr_player_fall_down;
	if(image_index>=1){image_index=1}
}
else if(state=="fallright"){
	if(sprite_index!=spr_player_fall_right){image_index=0}
	sprite_index=spr_player_fall_right;
	if(image_index>=1){image_index=1}
}
else if(state=="fallleft"){
	if(sprite_index!=spr_player_fall_left){image_index=0}
	sprite_index=spr_player_fall_left;
	if(image_index>=1){image_index=1}
}
else{
	sprite_index=spr_player_idle;
}
#endregion