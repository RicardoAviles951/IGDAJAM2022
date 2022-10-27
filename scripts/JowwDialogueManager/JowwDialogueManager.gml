// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function JowwDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	
	if(name == "Joww")
	{
		dialogue[0] = "This is a dialogue test for Joww.";
		dialogue[1] = "I hope that is okay.";
		dialogue[2] = "The test is complete."
	}
	
	return dialogue;
}