/// @description Go back from Bar
// You can write your code in this editor

if(!character.firstArrival){
	character.firstArrival = true;
}

if(self.x == path_get_point_x(pt_BarPath, 1))
{
	path_reverse(pt_BarPath);
	path_start(pt_BarPath, 3, path_action_stop, true)
	show_debug_message("Path1Reverse");
}
else if(self.x == path_get_point_x(pt_BarPath2, 1))
{
	path_reverse(pt_BarPath2);
	path_start(pt_BarPath2, 3, path_action_stop, true)
	show_debug_message("Path2Reverse");
}
else if(self.x == path_get_point_x(pt_BarPath3, 1))
{
	path_reverse(pt_BarPath3);
	path_start(pt_BarPath3, 3, path_action_stop, true)
	show_debug_message("Path3Reverse");
}

show_debug_message("fallback");
