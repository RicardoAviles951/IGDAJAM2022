/// @description Return to bar
// You can write your code in this editor

	//all paths available
if(!global.BarPath1inUse && !global.BarPath2inUse && !global.BarPath3inUse)
{		
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath2, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use");
	}
	else if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use");
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use");
	}
}
	// path 1 not available
else if(global.BarPath1inUse && !global.BarPath2inUse && !global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath2, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use");
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use");
	}
}
	// path 1 and 2 not available
else if(global.BarPath1inUse && global.BarPath2inUse && !global.BarPath3inUse)
{
	path_start(pt_BarPath3, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use");
	}
}
	// path 1 and 3 not available
else if(global.BarPath1inUse && !global.BarPath2inUse && global.BarPath3inUse)
{
	randomize();
	path_start(pt_BarPath2, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path3 in use");
	}
}
	// path 2 and 3 not available
else if(!global.BarPath1inUse && global.BarPath2inUse && global.BarPath3inUse)
{
	path_start(pt_BarPath, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use");
	}
}
	// path 2 not available
else if(!global.BarPath1inUse && global.BarPath2inUse && !global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use");
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use");
	}
}
	// path 3 not available
else if(!global.BarPath1inUse && !global.BarPath2inUse && global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath2), 3, path_action_stop, true);
		if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use");
	}
	else if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use");
	}
}
	// no paths available
else if(global.BarPath1inUse && global.BarPath2inUse && global.BarPath3inUse)
{
	path_start(pt_TestPath, 3, path_action_stop, true);
	drunkennessMeterOn = true;
}
