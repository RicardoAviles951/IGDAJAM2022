if global.mixstate != mixstates.action
{
	if moved == false
	{
		if isFree
		{
			TweenEasyMove(x,y,room_width/2,656,0,30,EaseInOutBack);
	
			with(o_shaker)
				{
					if x != startx-112 TweenEasyMove(startx,starty,startx-112,starty,0,30,EaseInOutBack);
				}
			moved = true;
		}
	
	}
	else
	{
		if global.mixstate == mixstates.pouring
		{
			//Execute any animations
			TweenEasyScale(1,1,1.5,1.5,0,15,EaseInOutBack);
			with(o_shaker)
				{
					array_push(cup,other.type);
					TweenEasyMove(x,y,-64,-64,0,60,EaseInCubic);
					//TweenEasyRotate(0,360,0,30,EaseInOutQuad);
					TweenEasyScale(1,1,.5,.5,0,30,EaseInOutQuad,TWEEN_MODE_BOUNCE);
					TweenEasyFade(1,0,0,30,EaseInOutQuad);
				}
	
			global.mixstate = mixstates.finished;
			//show_message("FINISHED");
	
		}
	}
}

