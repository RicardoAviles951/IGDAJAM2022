pos = 0;//Variable that will be used to move through array indexes
width = sprite_get_width(sprite_index); //Gets the sprite width. Used to position ingredient icons on mangager object.  
height = sprite_get_height(sprite_index);//Gets sprite height

//Arrays containing the ingredients
//Spirits
spirits[0]=o_dpunch;
spirits[1]=o_witchbrew;
spirits[2] = o_bansheeblood;
spirits[3] = o_magicmix;

//Citrus
citrus[0] = o_gorgoberry;
citrus[1] = o_snowberry;
citrus[2] = o_honeyblossom;

//Flavors
flavors[0] = o_mermaidtears;
flavors[1] = o_salamanderslime;
flavors[2] = o_goldenbirch;
flavors[3] = o_rootssvar;

//Array that holds the ingredient type array
array = spirits;

//Master List Array that holds all the ingredient arrays.
list[0] = spirits;
list[1] = citrus;
list[2] = flavors;
full_length = 0; //Var used to hold array length 
poofed = false;