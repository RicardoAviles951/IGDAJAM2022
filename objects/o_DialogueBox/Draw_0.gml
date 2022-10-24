/// @description Draw Dialogue Box
// You can write your code in this editor

//draw dialoguebox
draw_sprite(s_dialogueBoxSprite, 0, x, y);



//draw text
draw_set_font(f_diaFont);

if(charCount < string_length(dialogueText[dialogueSection])){
	charCount += .5;
}

dialoguePart = string_copy(dialogueText[dialogueSection], 1, charCount);

//draw name
draw_set_halign(fa_center);
draw_text(x + (dialogueBoxWidth/2), y+yBuffer, patronName);
//draw text
draw_set_halign(fa_left);
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, dialoguePart, stringHeight, dialogueBoxWidth);
