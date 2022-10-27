// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BrockDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	
	if(name == "Brock")
	{
		dialogue[0] = "This is a dialogue test for Brock.";
		dialogue[1] = "I hope that is okay.";
		dialogue[2] = "The test is complete."
	}
	
	return dialogue;
}