var _x = event_data[? "posX"];
var _y = event_data[? "posY"];
if global.mixstate == mixstates.picking{
	if step == steps.waiting{
	TweenEasyScale(1,1,2,2,0,15,EaseInBack,TWEEN_MODE_BOUNCE);//anim
	TweenEasyRotate(0,360,0,15,EaseInOutBack);//anim
	class.behavior();
	global.ID =id;
	show_debug_message("Tapped " + string(me));
	step = steps.idle;//The tapped ingredient becomes idle. 
	}
}
instance_create_layer(_x,_y,"touch",o_touch);//anim
