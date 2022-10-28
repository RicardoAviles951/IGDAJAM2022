if global.mixstate == mixstates.give
{
	var inst = instance_place(x,y,o_Character);
	if inst
	{
		with(inst){
			if(character.charOrdering)
			{
					GiveDrinkScript()
					global.conversationStarted = false;
					ResetMix();
			}
			else{
				with(other){
				TweenEasyMove(x,y,room_width/2,256,0,15,EaseInOutBack);
				}
			}
		}
	}
	else{
		TweenEasyMove(x,y,room_width/2,256,0,15,EaseInOutBack);
	}
}