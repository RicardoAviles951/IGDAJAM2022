// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueManagerScript(name, happiness, drunkenness, drink){
	var text = ".";
	if(name = "Rik")
	{
		text = RikDialogueManager(name, happiness, drunkenness, drink);
	}
	else if (name = "Quincy")
	{
		text = QuincyDialogueManager(name, happiness, drunkenness, drink);
	}
	else if (name = "Phillipa")
	{
		text = PhillipaDialogueManager(name, happiness, drunkenness, drink);
	}
	else if (name = "Brock")
	{
		text = BrockDialogueManager(name, happiness, drunkenness, drink);
	}
	else if (name = "Joww")
	{
		text = JowwDialogueManager(name, happiness, drunkenness, drink);
	}
	
	return text;
}