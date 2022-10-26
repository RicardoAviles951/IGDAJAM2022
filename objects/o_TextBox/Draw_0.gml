/// @description Draw TextBox

//draw textbox
draw_sprite(s_textBoxSprite, 0, x, y);



//draw text
draw_set_font(f_diaFont);

if(textCount < string_length(openingText)){
	textCount += .5;
}

textPart = string_copy(openingText, 1, textCount);

//draw name
if(patronName == "Rik"){
	draw_set_color(c_orange);
}
else if(patronName == "Quincy"){
	draw_set_color(c_blue);
}
else if(patronName == "Phillipa"){
	draw_set_color(c_purple);
}
else if(patronName == "Brock"){
	draw_set_color(c_red);
}
else if(patronName == "Joww"){
	draw_set_color(c_green);
}
draw_set_halign(fa_center);
draw_text_transformed(x + (boxWidth/2), y+5, patronName, .35, .35, 0);
//draw part of the text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_ext_transformed(x + xBuffer, y + (stringHeight / 2), textPart, stringHeight, boxWidth * 3.5, .3, .3, 0);
