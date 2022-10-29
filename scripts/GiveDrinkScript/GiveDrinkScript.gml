// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GiveDrinkScript(){
	// if character is ordering, increase happiness and drunkenness then stop ordering
	
	if(character.charOrdering)
	{
		if o_recipe_checker.correct//Checks with recipe checker to see if the drink is correct
		{
			if(!global.tutorialOver)
			{
				global.tutorialOver = true;
			}
			if(childDialogueBox != noone){
				if(childDialogueBox.choiceBox1 != noone){
					instance_destroy(childDialogueBox.choiceBox1);
					childDialogueBox.choiceBox1 = noone;
				}
				if(childDialogueBox.choiceBox2 != noone){
					instance_destroy(childDialogueBox.choiceBox2);
					childDialogueBox.choiceBox2 = noone;
				}
				instance_destroy(childDialogueBox);
				childDialogueBox = noone;
			}
			character.charHappiness = character.charHappiness + 20;
			character.charDrunkennessMax = character.charDrunkennessMax - 1;
			character.charOrdering = false;
			happinessMeterOn = false;
			fallBackFromBar = true;
			audio_play_sound(snd_goodjob,1,false);//Plays good job
		}
		else
		{
			//Negative points code goes here
			if(global.tutorialOver){
				if(childDialogueBox != noone){
					if(childDialogueBox.choiceBox1 != noone){
						instance_destroy(childDialogueBox.choiceBox1);
						childDialogueBox.choiceBox1 = noone;
					}
					if(childDialogueBox.choiceBox2 != noone){
						instance_destroy(childDialogueBox.choiceBox2);
						childDialogueBox.choiceBox2 = noone;
					}
					instance_destroy(childDialogueBox);
					childDialogueBox = noone;
				}
				character.charHappiness = character.charHappiness - 10;
				character.charDrunkennessMax = character.charDrunkennessMax - 1;
				character.charOrdering = false;
				happinessMeterOn = false;
				fallBackFromBar = true;
			}
			audio_play_sound(snd_badjob,1,false);//Plays bad sound
		}
	}

	// if character is not ordering, do nothing
	else
	{
	
	}

show_debug_message("event run");
}