if global.mixstate == mixstates.picking
{
	instance_create_layer(room_width/2,o_shaker.y-96,"Ingredients",o_ice_cubes);
	instance_create_layer(room_width/2-16,o_shaker.y-128,"Ingredients",o_ice_cubes);
	show_debug_message("ICE");
	if added == false
	{
		with(o_shaker)
		{
			array_push(cup,"ice");
		}
		added = true;
	}
	
}