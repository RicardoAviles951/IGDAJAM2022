pos+=1;								//Increments position in the list array by 1;
if pos > (full_length-1) pos = 0;   //if position overshoots the array length it resets to 0
trash = array;					    //Saves last known array in trash variable to make invisible.

poofed = false;

//Storing previous array for later 
var len = array_length(trash);	    //gets length of trash array
for (var j = 0; j < len; j++)
	{
		if instance_exists(trash[j])
		{							//Checks if the object exists and turns off visible.
			
			with(trash[j].id){
				visible = false;
				step = steps.idle;  //Sets state of ingredient to idle so that it cannot be interacted with. 
			}
		}
	}
array = list[pos];				    //Stores a new array from the master list to be operated upon in the step event.
	
for (var k = 0; k < array_length(array);k++)
	{
		with(array[k]){				//Sets objects from new list to waiting state to be interacted with. 
			step = steps.waiting;
		}
	}
	if !audio_is_playing(snd_poof){
	audio_play_sound(snd_poof,2,false);
}