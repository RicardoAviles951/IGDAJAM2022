class = new IngredientClass("Parent","Parent", noone);
//States for ingredients
enum steps{
	waiting,    //Waiting to be tapped
	tapped,     //Has been tapped
	idle,       //Cannot be interacted with. 
	interactive,//Can be interacted with for adding to shaker
	anim        //Animation for putting liquid in cup
}

step = steps.waiting; //Variable that stores state of ingredients
free = true;          //Checks if specific space is not being occupied. 
//Pinch Vars 
pinching = false;     //Stores if pinching is true or false.
rel_scale = 1;        //
timer = 0;
randomize();
_sign = choose(-1,1)