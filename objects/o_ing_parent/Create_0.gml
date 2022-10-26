class = new IngredientClass("Parent","Parent", noone);
me = id;
//States for ingredients
enum steps{
	waiting, //Waiting to be tapped
	tapped,  //Has been tapped
	idle,     //Cannot be interacted with. 
	interactive
}

step = steps.waiting;
free = true;
//Pinch Vars
pinching = false;
rel_scale = 1;
x_int = 0;
y_int = 0;