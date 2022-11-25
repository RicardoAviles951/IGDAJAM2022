x = room_width/2;
y = room_height/4;
text ="RESTART GAME";
if global.gameover
{
	audio_stop_all();
	overtext = "GAME OVER";
	audio_play_sound(snd_gameover,1,false);
}
else
{
	overtext = "PAUSED";
}