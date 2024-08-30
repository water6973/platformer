
if(player==0){
shader_set(shd_player_0)
}
else{
shader_set(shd_player_1)
}

draw_self();

shader_reset()
