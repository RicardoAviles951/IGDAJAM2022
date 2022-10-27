// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function QuincyDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	
	if(name == "Quincy")
	{
		dialogue[0] = "This is a dialogue test for Quincy.";
		dialogue[1] = "I hope that is okay.";
		dialogue[2] = "The test is complete."
	}
	
	return dialogue;
}