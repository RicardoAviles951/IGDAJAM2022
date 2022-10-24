if step == steps.interactive{
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
}