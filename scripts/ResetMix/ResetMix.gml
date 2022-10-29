///Resets all vital variables and positions to start over with a drink. 
function ResetMix(){
	if instance_exists(o_gesture_pinch){
	o_gesture_pinch.visible = false;
	}
	global.ID = noone;
	global.mixstate = mixstates.picking;
	with(o_shaker){
		var len = array_length(cup);
		array_delete(cup,0,len);
		x = startx;
		y = starty;
		image_alpha = 1;
		sprite_index = s_shaker_open;
	}
	with(o_glass_parent){
		sprite_index = spr;
		x = startx;
		y = starty;
		moved = false;//Stores if moved from starting position.
		isFree = true;//Stores if the target location is not occupied 

	}
	with(o_icewell){
		added = false;
	}
	with(o_ing_parent){
		if step == steps.interactive{
	
				instance_destroy();
			}
			
	}
	with(o_gesture_parent){
			with(inst_flick_fruit){
			visible = false;
			text = "SWIPE"
		}
		with(inst_flick_bar){
			text = "SWIPE"
		}


		with(inst_flick_glass){
			visible = false;
			text = "CANCEL"
		}
		with(inst_glass_final){
			visible = false;
			text = "CONFIRM";
		}
			}

}