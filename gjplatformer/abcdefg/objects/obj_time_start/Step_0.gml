
if(global.timestart==false){

if(instance_place(x,y,obj_player)){wait=1;}
if(wait==1 && !instance_place(x,y,obj_player)){
	wait=0;
	global.timestart=true;
}
}
else{
if(instance_place(x,y,obj_player)){
	global.timestart=false;
	if(global.time<global.besttime){
		global.besttime=global.time;	
	}
	function f0() {global.time=0;}
	call_later(10,time_source_units_frames,f0,0);
	}
global.time++;
}