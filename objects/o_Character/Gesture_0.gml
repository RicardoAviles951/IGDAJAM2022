/// @description Tap Character
// You can write your code in this editor

// if character is at the bar and has not been talked to, talk to character
if((self.x == path_get_point_x(pt_BarPath, 1) || self.x == path_get_point_x(pt_BarPath2, 1) || self.x == path_get_point_x(pt_BarPath3, 1)) && childDialogueBox == noone && !global.conversationStarted)
{
	instance_destroy(childTextBox);
	childTextBox = noone;
	character.charDrink = DrinkSelector(character.charName);
	childDialogueBox = instance_create_layer(144, 280, "DialogueLayer", o_DialogueBox, character);
	childDialogueBox.dialogueText = DialogueManagerScript(character.charName, character.charHappiness, character.charHappinessMax, character.charDrunkenness, character.charDrunkennessMax, character.firstArrival, character.charDrink);
	childDialogueBox.dialogueCreator = self;
	childDialogueBox.patronName = character.charName;
	switch (character.charName){
		case "Rik":
				if(character.charDrink == "Dragon's Treasure"){
					recipeCheckerRef.current_drink = recipeCheckerRef.dragons_treasure;
				}
				else if(character.charDrink == "Orc Fashioned"){
					recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
				}
				else if(character.charDrink == "Drowning Sailor"){
					recipeCheckerRef.current_drink = recipeCheckerRef.drowning_sailor;
				}
		break;
		case "Quincy":
			if(character.charDrink == "Three Dwarves"){
				recipeCheckerRef.current_drink = recipeCheckerRef.three_dwarves;
			}
			else if(character.charDrink == "Orc Fashioned"){
				recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
			}
			else if(character.charDrink == "Drowning Sailor"){
				recipeCheckerRef.current_drink = recipeCheckerRef.drowning_sailor;
			}
		break;
		case "Phillipa":
			if(character.charDrink == "Goblet of Fire"){
				recipeCheckerRef.current_drink = recipeCheckerRef.goblet_fire;
			}
			else if(character.charDrink == "Orc Fashioned"){
				recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
			}
			else if(character.charDrink == "Dwarven Ale"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dwarven_ale;
			}
		break;
		case "Brock":
			if(character.charDrink == "Dragon's Treasure"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dragons_treasure;
			}
			else if(character.charDrink == "Orc Fashioned"){
				recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
			}
			else if(character.charDrink == "Dwarven Ale"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dwarven_ale;
			}
		break;
		case "Fairy":
			if(character.charDrink == "Dragon's Treasure"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dragons_treasure;
			}
			else if(character.charDrink == "Orc Fashioned"){
				recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
			}
			else if(character.charDrink == "Dwarven Ale"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dwarven_ale;
			}
		break;
		case "Laif":
			if(character.charDrink == "Dragon's Treasure"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dragons_treasure;
			}
			else if(character.charDrink == "Orc Fashioned"){
				recipeCheckerRef.current_drink = recipeCheckerRef.orc_fashioned;
			}
			else if(character.charDrink == "Dwarven Ale"){
				recipeCheckerRef.current_drink = recipeCheckerRef.dwarven_ale;
			}
		break;
	}
	global.conversationStarted = true;
	character.charOrdering = true;
}
