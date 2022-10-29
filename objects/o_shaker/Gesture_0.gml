switch(global.mixstate){
	case mixstates.picking:
	if o_cheatsheet.open == false{
		with(inst_tap_shaker) instance_destroy();
		sprite_index = s_shaker_closed;
		with(inst_drag_shaker) visible = true;
		global.mixstate = mixstates.shaking;
	}
	break;
	
	case mixstates.shaking:
	if o_cheatsheet.open == false{
		sprite_index = s_shaker_open;
			with(inst_drag_shaker) visible = false;
		global.mixstate = mixstates.picking;
	}
	break;
}
