switch(global.mixstate){
	case mixstates.picking:
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
	break;
	
	case mixstates.pouring:
	with(inst_flick_glass) visible = true;
	with(inst_glass_final) visible = true;
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
			with(inst_flick_glass) visible = false;
			with(inst_glass_final) visible = false;
			//Execute any animations
			TweenEasyScale(1,1,1.5,1.5,0,15,EaseInOutBack);
			//Move Shaker off screen
			with(o_shaker)
				{
					array_push(cup,other.type);
					TweenEasyMove(x,y,-64,-64,0,60,EaseInCubic);
					//TweenEasyRotate(0,360,0,30,EaseInOutQuad);
					TweenEasyScale(1,1,.5,.5,0,30,EaseInOutQuad,TWEEN_MODE_BOUNCE);
					TweenEasyFade(1,0,0,30,EaseInOutQuad);
				}
			//Move to finished state	
			var gotobar = function(){
				global.scr_state = screen.bar;
				image_xscale = 1;
				image_yscale = 1;
				x = room_width/2;
				y = 264;
				global.mixstate = mixstates.give;
			}
			var t = time_source_create(time_source_game,1,time_source_units_seconds,gotobar);
			time_source_start(t);
			if o_recipe_checker.correct{
				FinalDrinkSprite();
			}
			being_served = true;
			global.mixstate = mixstates.finished;
		}
	break;
}