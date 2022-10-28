/// @description CreateCharacter
// You can write your code in this editor

// build character through character constructer
character = new Character();
// reference for Text Box that appears when character arrives at bar
childTextBox = noone;
// reference for Dialogue Box when character bar conversation happens
childDialogueBox = noone;
// bool for if happiness timer is on
happinessMeterOn = false;
// bool of it drunkenness timer is on
drunkennessMeterOn = false;
// bool for if character has been served and will leave bar
fallBackFromBar = false;
// bool if character's happiness meter is at or below 0
patronUnhappy = false;
// bool to check if character is at bar
atBar = false;
// recipe checker reference
recipeCheckerRef = o_recipe_checker;

// check character names, and mark off if that character exists
if (character.charName == "Rik") {
	global.rikExists = true;
	}
else if (character.charName == "Quincy") {
	global.quincyExists = true;
	}	
else if (character.charName == "Phillipa") {
	global.phillipaExists = true;
	}
else if (character.charName == "Brock") {
	global.brockExists = true;
	}
else if (character.charName == "Laif") {
	global.laifExists = true;
	}	

//select character drink
character.charDrinkSelect(character.charName);

	//all paths available
if(!global.BarPath1inUse && !global.BarPath2inUse && !global.BarPath3inUse)
{		
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath2, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use")
	}
	else if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use")
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use")
	}
	show_debug_message(global.BarPath1inUse);
}
	// path 1 not available
else if(global.BarPath1inUse && !global.BarPath2inUse && !global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath2, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use")
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use")
	}
}
	// path 1 and 2 not available
else if(global.BarPath1inUse && global.BarPath2inUse && !global.BarPath3inUse)
{
	path_start(pt_BarPath3, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use")
	}
}
	// path 1 and 3 not available
else if(global.BarPath1inUse && !global.BarPath2inUse && global.BarPath3inUse)
{
	randomize();
	path_start(pt_BarPath2, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use")
	}
}
	// path 2 and 3 not available
else if(!global.BarPath1inUse && global.BarPath2inUse && global.BarPath3inUse)
{
	path_start(pt_BarPath, 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use")
	}
}
	// path 2 not available
else if(!global.BarPath1inUse && global.BarPath2inUse && !global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath3), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use")
	}
	else if(self.path_index == pt_BarPath3){
		global.BarPath3inUse = true;
		show_debug_message("Path3 in use")
	}
}
	// path 3 not available
else if(!global.BarPath1inUse && !global.BarPath2inUse && global.BarPath3inUse)
{
	randomize();
	path_start(choose(pt_BarPath, pt_BarPath2), 3, path_action_stop, true);
	if(self.path_index == pt_BarPath){
		global.BarPath1inUse = true;
		show_debug_message("Path1 in use")
	}
	else if(self.path_index == pt_BarPath2){
		global.BarPath2inUse = true;
		show_debug_message("Path2 in use")
	}
}
	// no paths available
else if(global.BarPath1inUse && global.BarPath2inUse && global.BarPath3inUse)
{
	path_start(pt_TestPath, 3, path_action_stop, true);
	drunkennessMeterOn = true;
}

//show_debug_message(character);