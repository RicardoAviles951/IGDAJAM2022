if play == false{
	audio_sound_gain(snd_theme,0,0);
	audio_pause_sound(snd_theme);
}
else
{
	if audio_is_paused(snd_theme){
		audio_resume_sound(snd_theme);
		audio_sound_gain(snd_theme,1,1000);
	}
	
	if !audio_is_playing(snd_theme){
		audio_sound_gain(snd_theme,0,0);
		audio_play_sound(snd_theme,1,true);
		audio_sound_gain(snd_theme,1,1000);
		
	}
}