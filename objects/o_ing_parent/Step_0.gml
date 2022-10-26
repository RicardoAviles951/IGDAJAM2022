switch(step){
	case steps.waiting:
		//y += cos(timer*.09)*.5;
		image_angle += cos(timer*.08*_sign)*.5*_sign;
		timer++
	break;
	case steps.anim:
	if alarm[0] == -1{
		instance_create_layer(o_shaker.x,o_shaker.y-64,"Instances",class.drops);
		alarm[0] = 10;
	}
	break;
}

image_xscale = clamp(image_xscale,.5,2);
image_yscale = clamp(image_yscale,.5,2);
if instance_place(o_shaker.x,o_shaker.y - 64, o_ing_parent) free = false; else free = true;
