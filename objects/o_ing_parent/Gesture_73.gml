if step == steps.interactive{
pinching = false;
if image_xscale != 1{
	TweenEasyScale(image_xscale,image_yscale,1,1,0,30,EaseInOutElastic);
}
var copy = class.name;
with(o_shaker){//Pushed object ids to cup array
		array_push(cup,copy);
	}
instance_destroy();
}