if (reset=1 && instance_place(x,y-1,obj_player)){
image_index=1;
visible=true;
image_alpha=1;
reset=0;
}

if (image_alpha>0){image_alpha-=0.05}
if (!instance_place(x,y-1,obj_player)){reset=1}

