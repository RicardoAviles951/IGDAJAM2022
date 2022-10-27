switch(class.type){
	case "citrus":
		if pinching
		{
			rel_scale = event_data[? "relativescale"];
			image_xscale *= clamp(rel_scale,.8,1);
			image_yscale *= clamp(rel_scale,.8,1);
			switch(class.name){
				case "Gorgoberry":
				if alarm[1] == -1{
					instance_create_layer(x,y,"Ingredients",class.drops);
					alarm[1] = 10; //CREATES DROPLETS
				}
				break;
				
				case "Snowberry":
				if alarm[1] == -1 {
					instance_create_layer(x,y,"Ingredients",class.drops);
					alarm[1] = 10; //CREATES DROPLETS
				}
				break;
			}
			
			
		}

	break;
}

