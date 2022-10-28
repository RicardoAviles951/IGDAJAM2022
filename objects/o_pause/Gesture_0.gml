is_paused = !is_paused;
if is_paused{
instance_deactivate_all(true);
	if !instance_exists(o_endscreen)
	{
		instance_create_layer(x,y,"Controllers",o_endscreen);
	}
}
else{
	instance_activate_all();
	instance_destroy(o_endscreen);
}