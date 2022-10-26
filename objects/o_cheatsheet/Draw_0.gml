/// @description Draws recipes
draw_self();
if open{
	var scale = 12/60;
	var width = sprite_get_width(sprite_index);
	var height = sprite_get_height(sprite_index);
	var startx = x - (width/2)*3; //Left edge of sheet
	var starty = y - (height/2)-8; //Upper left of sheet
	var len = array_length(mlist);//Grabs all the recipe arrays
	var c = c_black;
	draw_set_font(f_cheats); //Set font
	draw_set_halign(fa_center);
	for(var i = 0; i < len; i++){//Loop through mlist and stores array vars
		var array = mlist[i];
		draw_text_ext_transformed_color(x,starty-48+(52*i),array[@ 0],64,640/scale,scale,scale,0,c,c,c,c,1);
		
		for (var j = 1; j < array_length(array);j++){//Loops through the stored arrays and draws the sprites.
			draw_sprite_ext(array[j],0,startx+(48*j),starty-12+(52*i),.45,.45,0,c_white,alpha);
		}
	}
	if alpha < 1 alpha +=.05; //Sprites fade in
}
else{
alpha = 0;	
}
draw_set_halign(fa_left);
