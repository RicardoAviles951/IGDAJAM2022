if open == false{
	audio_play_sound(snd_cheat_open,2,false);
	audio_sound_gain(snd_cheat_close,1,0);
	TweenEasyScale(1,1,3,2.5,0,30,EaseInOutBack);
	TweenEasyMove(x,y,room_width/2,y-32,0,30,EaseInOutBack);
	open = true;
} else
{
	audio_play_sound(snd_cheat_close,2,false);
	audio_sound_gain(snd_cheat_close,0,500);
	TweenEasyScale(3,2.5,1,1,0,30,EaseInOutBack);
	TweenEasyMove(x,y,startx,starty,0,30,EaseInOutBack);
	open = false;
}