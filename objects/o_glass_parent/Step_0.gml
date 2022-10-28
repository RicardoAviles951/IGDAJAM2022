//Checks if another glass is already in the target position.
//A second check using OR is required because objects cannot detect themselves. 
if place_meeting(room_width/2,656,o_glass_parent) or y =656{
	isFree = false;
}
else{
	isFree = true;
}

//If the shaker being dragged then reset all the glasses. 
if o_shaker.shaking == true{
	moved = false;
	isFree = true;
	x = startx;
	y = starty;
}
if global.mixstate == mixstates.finished{
	
if being_served FinalDrinkSprite();
}
