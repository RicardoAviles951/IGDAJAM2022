switch(global.mixstate){
	case mixstates.picking:
		sprite_index = s_shaker_closed;
		global.mixstate = mixstates.shaking;
	break;
	
	case mixstates.shaking:
		sprite_index = s_shaker_open;
		global.mixstate = mixstates.picking;
	break;
}
