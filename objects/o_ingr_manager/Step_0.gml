full_length = array_length(list);//Gets length of the master list array every frame. Important for FLICK event. 

//Vars ised to determine positioning of created ingredients 
var ypad = 32;
var xpad = 128;

//Loops through array to determine if ingredients should be created or just made visible. 
var _len = array_length(array)
for (var i = 0; i <_len;i++)
{
	if !instance_exists(array[i])//If object in array does NOT exist.
	{
		instance_create_layer(x+48+(xpad*i),y+ypad,"Ingredients",array[i]);//Create it at specifed place.
	}
	else//If it does exist, 
	{
		with(array[i])
		{
			visible = true;//then make it visible.
		}
	}
}


//Does the same as flick event
//if keyboard_check_pressed(vk_up){//Check once
//	pos+=1;	//Increments position in the list array by 1;
//	if pos > (full_length-1) pos = 0; //if position overshoots the array length it resets to 0
//	trash = array; //Saves last known array in trash variable for destroying
	

////Storing previous array for later 
//	var len = array_length(trash);//gets length of trash array
//	for (var j = 0; j <len;j++ ){
//		if instance_exists(trash[j]){//Checks if the object exists and destroys it
//			//instance_destroy(trash[j]);
//			with(trash[j].id){
//				visible = false;
//				step = steps.idle;
//			}
//		}
//	}
//	array = list[pos]; //puts new array from list to be operated upon in the draw event
	
//	for (var k = 0; k < array_length(array);k++){
//		with(array[k]){
//			step = steps.waiting;
//		}
//	}
//}

