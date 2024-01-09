// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init(){

}

function goto_room(rm,check){
	var _f0=method({check:check},function(){
	obj_player.x=global.checkpt[3][check].cx;
	obj_player.y=global.checkpt[3][check].cy;
	global.camy=global.camfollow.y;
	});
	room_goto(rm);
	call_later(1,time_source_units_frames,_f0);
}