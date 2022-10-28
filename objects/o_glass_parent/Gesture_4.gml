if global.mixstate == mixstates.give
{
	if place_meeting(x,y,o_Character) && o_Character.character.charOrdering == true{
		//show_message("GIVEN");
		event_perform_object(o_Character, ev_user2, 0);
		global.conversationStarted = false;
		ResetMix();
	}
	else{
		TweenEasyMove(x,y,room_width/2,256,0,15,EaseInOutBack);
	}
}