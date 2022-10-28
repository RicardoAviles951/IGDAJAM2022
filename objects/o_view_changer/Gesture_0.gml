with(o_view_manager)
{
	switch(scr_state){
		case screen.bar:
		audio_play_sound(snd_swoosh,3,false);
			scr_state = screen.mix;
			if(instance_exists(o_DialogueBox)){
				o_DialogueBox.x = 48;
				o_DialogueBox.y = 380;
			}
			if(instance_exists(o_ChoiceBox)){
				var firstChoiceBox = instance_find(o_ChoiceBox, 0)
				var secondChoiceBox = instance_find(o_ChoiceBox, 1)
				firstChoiceBox.x = 48
				firstChoiceBox.y = 392
				secondChoiceBox.x = 288
				secondChoiceBox.y = 392
			}

		break;
		
		case screen.mix:
		audio_play_sound(snd_swoosh,3,false);
			scr_state = screen.bar;
						if(instance_exists(o_DialogueBox)){
				o_DialogueBox.x = 144;
				o_DialogueBox.y = 280;
			}
			if(instance_exists(o_ChoiceBox)){
				var firstChoiceBox = instance_find(o_ChoiceBox, 0)
				var secondChoiceBox = instance_find(o_ChoiceBox, 1)
				firstChoiceBox.x = 80
				firstChoiceBox.y = 284
				secondChoiceBox.x = 432
				secondChoiceBox.y = 284
			}
		break;
	}
}