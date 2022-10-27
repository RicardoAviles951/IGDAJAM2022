// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueManagerScript(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var text = ".";
	if(name = "Rik")
	{
		text = RikDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink);
	}
	else if (name = "Quincy")
	{
		text = QuincyDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink);
	}
	else if (name = "Phillipa")
	{
		text = PhillipaDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink);
	}
	else if (name = "Brock")
	{
		text = BrockDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink);
	}
	else if (name = "Joww")
	{
		text = JowwDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink);
	}
	
	return text;
}