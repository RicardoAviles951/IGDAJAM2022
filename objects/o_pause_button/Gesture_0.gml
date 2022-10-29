audio_play_sound(snd_uiaccept,1,false);

is_paused = !is_paused;
if is_paused{
instance_deactivate_all(true);
	if !instance_exists(o_endscreen)
	{
		instance_create_layer(x,y,"Controllers",o_endscreen);
	}
instance_activate_object(o_music_manager);
}
else{
	instance_activate_all();
	instance_destroy(o_endscreen);
}
with(o_music_manager){
play = !play;	
}