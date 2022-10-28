/// @description Insert description here
// You can write your code in this editor

if(self.id == choiceBoxCreator.choiceBox1.id){
	choiceBoxCreator.dialogueChoice1 = true;
	choiceBoxCreator.dialogueSection += 1;
	choiceBoxCreator.charCount = 0;
	choiceBoxCreator.visibilityTimerOn = true;
	// effect on characters happiness
	choiceBoxCreator.dialogueCreator.character.charHappiness = choiceBoxCreator.dialogueCreator.character.charHappiness + 10;
	choiceBoxCreator.choiceBox1 = noone;
	choiceBoxCreator.choiceBox2 = noone;
	instance_destroy(o_ChoiceBox);
	show_debug_message("Dialogue Choice 1");
}
else if (self.id == choiceBoxCreator.choiceBox2.id){
	choiceBoxCreator.dialogueChoice2 = true;
	choiceBoxCreator.dialogueSection += 1;
	choiceBoxCreator.charCount = 0;
	choiceBoxCreator.visibilityTimerOn = true;
	// effect on characters happiness
	choiceBoxCreator.dialogueCreator.character.charHappiness = choiceBoxCreator.dialogueCreator.character.charHappiness - 5;
	choiceBoxCreator.choiceBox1 = noone;
	choiceBoxCreator.choiceBox2 = noone;
	instance_destroy(o_ChoiceBox);
	show_debug_message("Dialogue Choice 2");
}

