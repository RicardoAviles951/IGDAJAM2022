switch(global.mixstate){
	case mixstates.picking:
		if step == steps.waiting
		{
			with(inst_tap_ing) visible = false;
				TweenEasyScale(1,1,2,2,0,15,EaseInBack,TWEEN_MODE_BOUNCE);//anim
				if free
					{
						class.behavior();
					}
	
				global.ID =id;
				//step = steps.idle;//The tapped ingredient becomes idle.
				global.mixstate = mixstates.action;
		}
	break;
	
	case mixstates.action:
		switch(step)
{
	case steps.interactive:
	#region Types of ingredients
		switch(class.type)
			{
				case "spirit":
				with(inst_tap_shaker) visible = true;
				with(inst_pour) visible = false;
				audio_sound_gain(snd_drops,1,0);
					//show_message("POUR!");
					var copy = class.name;
					with(o_shaker){//Pushed object ids to cup array
					array_push(cup,copy);
					}
					var animate = function(){
						instance_destroy();
						global.mixstate = mixstates.picking;
					}
					var t = time_source_create(time_source_game,1,time_source_units_seconds,animate);
					time_source_start(t);
					audio_play_sound(snd_drops,2,false);
					audio_sound_gain(snd_drops,0,1000);
					step = steps.anim;
				break;
	
				case "citrus":
				
				if image_index >= 2{
					image_speed = 0;
				o_gesture_pinch.visible = false;
					var copy = class.name;
					with(o_shaker){//Pushed object ids to cup array
						array_push(cup,copy);
					}
					instance_destroy();
					global.mixstate = mixstates.picking;
				}
				break;
	
				case "sweet":
				with(inst_pour) visible = false;
				audio_sound_gain(snd_drops,1,0);
					//show_message("Pour BITTERS");
					var copy = class.name;
					with(o_shaker){//Pushed object ids to cup array
						array_push(cup,copy);
					}
					var animate = function(){
						instance_destroy();
						global.mixstate = mixstates.picking;
					}
					var t = time_source_create(time_source_game,1,time_source_units_seconds,animate);
					time_source_start(t);
					audio_play_sound(snd_drops,2,false);
					audio_sound_gain(snd_drops,0,1000);
					step = steps.anim;
				break;
			}
	break;	
	#endregion
}
	break;
	
	case mixstates.shaking:
	
	break;
	
	case mixstates.pouring:
	
	break;
	
	case mixstates.finished:
	
	break;
}





