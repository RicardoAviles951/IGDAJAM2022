switch(global.mixstate){
	case mixstates.picking:
	if o_cheatsheet.open == false{
		sprite_index = s_shaker_closed;
		global.mixstate = mixstates.shaking;
	}
	break;
	
	case mixstates.shaking:
	if o_cheatsheet.open == false{
		sprite_index = s_shaker_open;
		global.mixstate = mixstates.picking;
	}
	break;
}
