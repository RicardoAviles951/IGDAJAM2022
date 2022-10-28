/// @description Increase Character Happiness
// You can write your code in this editor

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