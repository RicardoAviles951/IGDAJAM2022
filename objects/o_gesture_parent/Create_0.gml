timer = 0;
text = "";
with(inst_ice)    {
	text = "Add Ice";
	visible = false;
}
with(inst_tap_ing){
	text = "Choose";
	visible = false;
}
with(inst_flick_fruit){
	visible = false;
	text = "SWIPE"
}
with(inst_flick_bar){
	text = "SWIPE"
}
with(inst_close_shaker) visible = false; 
with(inst_drag_shaker) {
	visible = false;
	text = "DRAG to Shake"
}
with(inst_pour) visible = false;
with(inst_flick_glass){
	visible = false;
	text = "CANCEL"
}
with(inst_glass_final){
	visible = false;
	text = "CONFIRM";
}
with(inst_cheat_open){
	visible = true;
	text = "Open";
}
with(inst_tap_shaker){
	visible = false;
	text = "Tap after ALL ingredients added";
}