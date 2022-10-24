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
draw_set_halign(fa_center);
draw_text(x + (boxWidth/2), y+yBuffer, patronName);
//draw part of the text
draw_set_halign(fa_left);
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, textPart, stringHeight, boxWidth);
