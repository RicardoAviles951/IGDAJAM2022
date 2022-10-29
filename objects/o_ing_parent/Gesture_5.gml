if step == steps.interactive{
	
	switch(class.type)
			{
				case "spirit":
				global.mixstate = mixstates.picking;
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
				break;
				
				case "citrus":
				
					if image_index < 2{
						image_speed = 1;
						with(inst_flick_fruit) visible = false;
						o_gesture_pinch.visible = true;
					}//Enter code to flick away
					audio_play_sound(snd_cut,2,false);
				break;
				
				case "sweet":
	
				global.mixstate = mixstates.picking;
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
				break;
			}
	
}