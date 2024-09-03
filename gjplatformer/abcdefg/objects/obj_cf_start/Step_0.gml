
if(keyboard_check_pressed(ord("Z"))){
	goto_room(rm_tp0);
}

if(keyboard_check_pressed(ord("X"))){
	global.players=2;
	goto_room(rm_tp0);
}