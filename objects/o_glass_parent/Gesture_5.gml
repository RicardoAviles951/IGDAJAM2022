if global.mixstate != mixstates.finished{
	if moved 
	{
		if isFree == false
		{
			TweenEasyMove(x,y,startx,starty,0,30,EaseInOutBack);
	
			with(o_shaker)
			{
				TweenEasyMove(x,y,startx,y,0,30,EaseInOutBack);
			}
			moved = false;
		}
	
	}
}