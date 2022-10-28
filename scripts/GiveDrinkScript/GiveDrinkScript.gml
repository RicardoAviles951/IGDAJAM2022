// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GiveDrinkScript(){
	// if character is ordering, increase happiness and drunkenness then stop ordering
	
	if(character.charOrdering)
	{
		
		if o_recipe_checker.correct//Checks with recipe checker to see if the drink is correct
		{
			character.charHappiness = character.charHappiness + 20;
			character.charDrunkenness = character.charDrunkenness - 1;
			character.charOrdering = false;
			audio_play_sound(snd_goodjob,1,false);//Plays good job
		}
		else
		{
			//Negative points code goes here
			audio_play_sound(snd_badjob,1,false);//Plays bad sound
		}
	}

	// iff character is not ordering, do nothing
	else
	{
	
	}

show_debug_message("event run");
}