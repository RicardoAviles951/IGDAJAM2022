/// @description Insert description here
// You can write your code in this editor

// turn on happiness timer
if (happinessMeterOn){
	// countdown happiness timer
	if(character.charHappiness > 0){
		character.charHappiness = character.charHappiness-delta_time/1000000;
	}
	else if(character.charHappiness <= 0 && !patronUnhappy){
		global.unsatisfiedCustomers += 1;
		patronUnhappy = true;
	}
}
// turn off happiness timer
else if (!happinessMeterOn)
{
	character.charHappiness = character.charHappiness;
}
// check if patron has been served drink and leaves bar
if(fallBackFromBar){
	event_user(0);
	fallBackFromBar = false;
}
// do not let happiness timer go over max character happiness
if(character.charHappiness > character.charHappinessMax){
	character.charHappiness = character.charHappinessMax;
}
// drunkenness meter to countdown return to bar
if(drunkennessMeterOn){
	if(character.charDrunkenness > 0){
		character.charDrunkenness = character.charDrunkenness-delta_time/1000000;
	}
	else if (character.charDrunkenness <= 0){
		event_user(1);
		character.charDrunkenness = character.charDrunkennessMax;
		drunkennessMeterOn = false;
	}
}
// check to see if conversation is over, then make order false
if(!global.conversationStarted){
	character.charOrdering = false;
}