//TweenEasyRotate(0,360,0,30,EaseInOutBack)
TweenEasyMove(x,y,startx,starty,0,30,EaseInOutBack);
shaking = false;
if array_length(cup) > 0 and global.mixstate == mixstates.shaking{
show_debug_message("POURING NOW");
global.mixstate = mixstates.pouring;
}
else{
	show_debug_message("NO INGREDIENTS");
}
//x = startx;
//y = starty;
if audio_is_playing(snd_shake){
	//audio_stop_sound(snd_shake)
	var vol = audio_sound_get_gain(snd_shake);
	audio_sound_gain(snd_shake,0,200);
	if vol <.1 audio_stop_sound(snd_shake);
}