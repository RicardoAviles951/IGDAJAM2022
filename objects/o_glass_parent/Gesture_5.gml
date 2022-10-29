if global.mixstate != mixstates.finished{
	with(inst_flick_glass) visible = false;
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