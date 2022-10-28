if global.mixstate == mixstates.give
{
	if place_meeting(x,y,o_Character){
		show_message("GIVEN");
		with (o_Character){ 
				if(character.charOrdering){
					GiveDrinkScript()
					} 
			}
		global.conversationStarted = false;
		ResetMix();
	}
	else{
		TweenEasyMove(x,y,room_width/2,256,0,15,EaseInOutBack);
	}
}