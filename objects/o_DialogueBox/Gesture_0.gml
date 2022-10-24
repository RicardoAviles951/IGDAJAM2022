/// @description Continue Dialogue
// You can write your code in this editor

if(dialogueSection + 1 < array_length_1d(dialogueText))
{
	dialogueSection += 1;
	charCount = 0;
}
else
{
	global.conversationStarted = false;
	dialogueCreator.character.charHappiness = dialogueCreator.character.charHappiness + 20;
	//dialogueCreator.character.charDrunkenness = dialogueCreator.character.charDrunkenness -1;
	dialogueCreator.happinessMeterOn = false;
	dialogueCreator.fallBackFromBar = true;
	instance_destroy()
	dialogueCreator.childDialogueBox = noone;
}

show_debug_message(dialogueSection);