// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RikDialogueManager(name, happiness, drunkenness, drink){
	var dialogue = ".";
	
	if(name == "Rik")
	{
		dialogue[0] = "This is a dialogue test.";
		dialogue[1] = "I hope that is okay.";
		dialogue[2] = "The test is complete."
	}
	
	return dialogue;
}