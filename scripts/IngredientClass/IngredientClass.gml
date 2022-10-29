
function IngredientClass(_type,_name,_icon,_index=0,_drops = o_droplets_banshee) constructor {
	type = _type;
	name = _name;
	icon = _icon;
	index = _index;//optional
	drops = _drops;
	behavior = function()
	{
		switch(type){
			case "spirit":
			//Behavior for spirits when adding to cup
			var str = object_get_name(index);
			var obj = asset_get_index(str);
			with(inst_pour) visible = true;
			with(instance_create_layer(o_shaker.x+48,o_shaker.y-112,"Ingredients",obj)){
				TweenEasyScale(1,1,2,2,0,15,EaseInOutBack);
				TweenEasyRotate(0,135,0,15,EaseInOutQuad);
				step = steps.interactive; //Set to this state for interactive gestures. 
			}
				show_debug_message(type);
			break;
			
			case "citrus":
			//Gets the object specific type (copy of what was tapped) and spawns it above the shaker. 
			var str = object_get_name(index);
			var obj = asset_get_index(str);
			with(inst_flick_fruit) visible = true;
			with(instance_create_layer(o_shaker.x,o_shaker.y-112,"Ingredients",obj)){
				step = steps.interactive; //Set to this state for interactive gestures. 
			}
			break;
			
			case "sweet":
			var str = object_get_name(index);
			var obj = asset_get_index(str);
			with(inst_pour) visible = true;
			with(instance_create_layer(o_shaker.x+48,o_shaker.y-112,"Ingredients",obj)){
				TweenEasyScale(1,1,3,3,0,15,EaseInOutQuad);
				TweenEasyRotate(0,135,0,15,EaseInOutQuad);
				step = steps.interactive; //Set to this state for interactive gestures. 
			}
			break;
		}
	}
}