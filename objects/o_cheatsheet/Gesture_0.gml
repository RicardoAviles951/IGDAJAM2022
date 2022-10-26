if open == false{
	TweenEasyScale(1,1,3,2.5,0,30,EaseInOutBack);
	TweenEasyMove(x,y,room_width/2,y,0,30,EaseInOutBack);
	open = true;
} else
{
	TweenEasyScale(3,2.5,1,1,0,30,EaseInOutBack);
	TweenEasyMove(x,y,520,560,0,30,EaseInOutBack);
	open = false;
}