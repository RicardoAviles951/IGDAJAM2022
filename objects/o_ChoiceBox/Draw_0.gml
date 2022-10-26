/// @description Draw Choice Box
// You can write your code in this editor

//draw textbox
draw_sprite(s_choiceBoxSprite, 0, x, y);



//draw text
draw_set_font(f_diaFont);

if(textCount < string_length(choiceText)){
	textCount += .5;
}

choicePart = string_copy(choiceText, 1, textCount);

draw_set_halign(fa_center);
draw_text_ext_transformed(x + 64, y + 3, choicePart, stringHeight, choiceBoxWidth * 2.5, .3, .3, 0);