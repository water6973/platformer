if(instance_place(x,y,obj_player)){
	if(destination=="lastchx"){
		obj_player.x=global.checkpt[0];
		obj_player.y=global.checkpt[1];
		function f0() {global.time=0;}
		call_later(10,time_source_units_frames,f0,0);
		global.timestart=false;
	}
}