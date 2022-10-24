x = room_width/2;						 //Sets position of the shaker.
startx = x;								 //Stores the starting x position of the shaker.
starty = y;								 //Stores teh starting y position of the shaker.
shaking = false;						 //Tracks if the shaker is being dragged.
width = sprite_get_width(sprite_index);  //Stores the width of the sprite.
height = sprite_get_height(sprite_index);//Stores the height of the sprite.
cup = array_create(0,noone);             //Array that stores the IDs of the tapped ingredients. 
ing_draw = "";

