if pinching{
	var _x = event_data[? "posX1"];
	var _y = event_data[? "posY1"];
	var _x2 = event_data[? "posX2"];
	var _y2 = event_data[? "posY2"];
	
rel_scale = event_data[? "relativescale"];
image_xscale *= clamp(rel_scale,.8,1);
image_yscale *= clamp(rel_scale,.8,1);
show_debug_message(image_xscale);
//if alarm[0] == -1 alarm[0] = 10; CREATES DROPLETS
instance_create_layer(_x,_y,"Instances",o_touch);
instance_create_layer(_x2,_y2,"Instances",o_touch);
}

