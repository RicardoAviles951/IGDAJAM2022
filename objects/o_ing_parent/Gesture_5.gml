if step == steps.interactive{
	global.mixstate = mixstates.picking;
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
}