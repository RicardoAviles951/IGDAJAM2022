
function IngredientClass(_type,_name,_icon,_index=0) constructor {
	type = _type;
	name = _name;
	icon = _icon;
	index = _index//optional
	behavior = function()
	{
		switch(type){
			case "spirit":
			//Behavior for spirits when adding to cup
			array_push(o_shaker.cup,name);
			var str = object_get_name(index);
			var obj = asset_get_index(str);
			with(instance_create_layer(o_shaker.x+64,o_shaker.y-64,"Ingredients",obj)){
				step = steps.interactive; //Set to this state for interactive gestures. 
			}
				show_debug_message(type);
			break;
			
			case "citrus":
			//Gets the object specific type (copy of what was tapped) and spawns it above the shaker. 
			var str = object_get_name(index);
			var obj = asset_get_index(str);
			with(instance_create_layer(o_shaker.x,o_shaker.y-64,"Ingredients",obj)){
				step = steps.interactive; //Set to this state for interactive gestures. 
			}
			break;
			
			case "sweet":
				show_debug_message(type);
				array_push(o_shaker.cup,name);
			break;
		}
	}
}