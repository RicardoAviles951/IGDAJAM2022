
if moved == false
{
	if isFree{
	TweenEasyMove(x,y,room_width/2,656,0,30,EaseInOutBack);
	
	with(o_shaker)
	{
		if x != startx-112 TweenEasyMove(startx,starty,startx-112,starty,0,30,EaseInOutBack);
	}
	moved = true;
	}
	
}
else{
	if global.mixstate == mixstates.pouring{
	//Execute any animations
	TweenEasyScale(1,1,1.5,1.5,0,15,EaseInOutBack);
	o_shaker.visible = false;
	global.mixstate = mixstates.finished;
	//show_message("FINISHED");
	
}
}

