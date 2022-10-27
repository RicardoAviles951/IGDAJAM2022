if step == steps.interactive{
	
	switch(class.type)
			{
				case "spirit":
				global.mixstate = mixstates.picking;
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
				break;
				
				case "citrus":
					if image_index < 2{
						image_speed = 1;
					}
				break;
				
				case "sweet":
				global.mixstate = mixstates.picking;
	with(global.ID){
		step = steps.waiting;
	}
	instance_destroy();
				break;
			}
	
}