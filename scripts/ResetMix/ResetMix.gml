///Resets all vital variables and positions to start over with a drink. 
function ResetMix(){
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
		x = startx;
		y = starty;
		moved = false;//Stores if moved from starting position.
		isFree = true;//Stores if the target location is not occupied 

	}
	with(o_icewell){
		added = false;
	}
	

}