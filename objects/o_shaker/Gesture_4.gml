//TweenEasyRotate(0,360,0,30,EaseInOutBack)
TweenEasyMove(x,y,startx,starty,0,30,EaseInOutBack);
shaking = false;
if array_length(cup) > 0 and global.mixstate == mixstates.shaking{
show_debug_message("POURING NOW");
global.mixstate = mixstates.pouring;
}
else{
	show_debug_message("NO INGREDIENTS");
}
//x = startx;
//y = starty;