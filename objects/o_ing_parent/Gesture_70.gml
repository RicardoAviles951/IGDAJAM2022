if step == steps.interactive{
	switch(class.type){
		case "citrus":
			audio_play_sound(snd_squeeze,2,false);
			rel_scale = event_data[? "relativescale"];
			pinching = true;
			image_xscale *= clamp(rel_scale,.8,1);
			image_yscale *= clamp(rel_scale,.8,1);
			//show_debug_message( clamp(rel_scale,.8,1));
		break;
	}

}