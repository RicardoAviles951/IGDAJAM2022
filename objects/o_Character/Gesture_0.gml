/// @description Tap Character
// You can write your code in this editor

// if character is at the bar and has not been talked to, talk to character
if((self.x == path_get_point_x(pt_BarPath, 1) || self.x == path_get_point_x(pt_BarPath2, 1) || self.x == path_get_point_x(pt_BarPath3, 1)) && childDialogueBox == noone && !global.conversationStarted)
{
	instance_destroy(childTextBox);
	childTextBox = noone;
	childDialogueBox = instance_create_layer(128, 260, "DialogueLayer", o_DialogueBox, character);
	childDialogueBox.dialogueText = DialogueManagerScript(character.charName, character.charHappiness, character.charDrunkenness, character.charDrink);
	childDialogueBox.dialogueCreator = self;
	childDialogueBox.patronName = character.charName;
	global.conversationStarted = true;
}
