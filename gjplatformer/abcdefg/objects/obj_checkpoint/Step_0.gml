if (instance_place(x,y,obj_player)){
global.checkpt[0]=cx;
global.checkpt[1]=cy;
global.checkpt[2]=checknum;
global.timestart=0;
function f0() {global.time=0;}
	call_later(10,time_source_units_frames,f0,0);
}