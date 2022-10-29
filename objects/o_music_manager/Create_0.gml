play = true;
audio_sound_gain(snd_theme,0,0);
if play
{
	audio_play_sound(snd_theme,1,true);
	audio_sound_gain(snd_theme,1,1000);
}