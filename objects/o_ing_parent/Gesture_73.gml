if step == steps.interactive{
pinching = false;
switch(class.type)
			{
				case "citrus":
				if image_index >= 2{
					image_speed = 0;
				
					var copy = class.name;
					with(o_shaker){//Pushed object ids to cup array
						array_push(cup,copy);
					}
					instance_destroy();
					global.mixstate = mixstates.picking;
				}
				break;
			}
}