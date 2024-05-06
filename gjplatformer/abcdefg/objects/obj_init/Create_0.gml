global.camfollow=obj_player;
global.besttime=0;
global.checkpt[0]=0
global.checkpt[1]=0
global.checkpt[2]=0
global.deaths=0;
global.time=0;
draw_set_font(fnt_verdana);
if (game_get_speed(gamespeed_fps) != 60)
{
    game_set_speed(60, gamespeed_fps);
}