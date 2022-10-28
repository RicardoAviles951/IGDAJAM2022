// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GiveDrinkScript(){
	// if character is ordering, increase happiness and drunkenness then stop ordering
	if(character.charOrdering){
		character.charHappiness = character.charHappiness + 20;
		character.charDrunkenness = character.charDrunkenness - 1;
		character.charOrdering = false;
	}

	// iff character is not ordering, do nothing
	else{
	
	}

show_debug_message("event run");
}