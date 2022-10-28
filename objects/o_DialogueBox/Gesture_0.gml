/// @description Continue Dialogue
// You can write your code in this editor

if(dialogueSection + 1 < array_length_1d(dialogueText) && self.visible == true){
	dialogueSection += 1;
	charCount = 0;
}
if (is_array(dialogueText[dialogueSection]) && self.visible == true){
	if(!dialogueChoice1 && !dialogueChoice2){
		if(viewManager.scr_state == screen.bar){
			choiceBox1 = instance_create_layer(80, 284, "DialogueLayer", o_ChoiceBox);
			choiceBox2 = instance_create_layer(432, 284, "DialogueLayer", o_ChoiceBox);
		}
		else if(viewManager.scr_state == screen.mix){
			choiceBox1 = instance_create_layer(48, 392, "DialogueLayer", o_ChoiceBox);
			choiceBox2 = instance_create_layer(288, 392, "DialogueLayer", o_ChoiceBox);
		}
		choiceBox1.choiceBoxCreator = self;
		choiceBox2.choiceBoxCreator = self;
		choiceBox1.choiceText = dialogueText[dialogueSection][0];
		choiceBox2.choiceText = dialogueText[dialogueSection][1];
		self.visible = false;
	}
}
else if (dialogueSection + 1 >= array_length_1d(dialogueText) && self.visible == true)
{
	global.conversationStarted = false;
	//dialogueCreator.character.charHappiness = dialogueCreator.character.charHappiness + 20;
	//dialogueCreator.character.charDrunkenness = dialogueCreator.character.charDrunkenness -1;
	dialogueCreator.happinessMeterOn = false;
	dialogueCreator.fallBackFromBar = true;
	instance_destroy()
	dialogueCreator.childDialogueBox = noone;
}
