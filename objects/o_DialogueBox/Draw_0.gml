/// @description Draw Dialogue Box
// You can write your code in this editor

//draw dialoguebox
draw_sprite(s_dialogueBoxSprite, 0, x, y);


//draw text
draw_set_font(f_diaFont);
if(!is_array(dialogueText[dialogueSection])){
	if(charCount < string_length(dialogueText[dialogueSection])){
		charCount += .5;
	}

	dialoguePart = string_copy(dialogueText[dialogueSection], 1, charCount);

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
	else if(patronName == "Laif"){
		draw_set_color(c_green);
	}
	draw_set_halign(fa_center);
	draw_text_transformed(x + (dialogueBoxWidth/2), y+5, patronName, .7, .7, 0);
//draw text
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text_ext_transformed(x + xBuffer, y + (stringHeight/1.8), dialoguePart, (stringHeight/1.8), dialogueBoxWidth * 1.65, .6, .6, 0);
	dialogueChoice1 = false;
	dialogueChoice2 = false;
}
else if(is_array(dialogueText[dialogueSection])){
	if(dialogueChoice1){
		if(charCount < string_length(dialogueText[dialogueSection][0])){
			charCount += .5;
		}

		dialoguePart = string_copy(dialogueText[dialogueSection][0], 1, charCount);

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
		else if(patronName == "Laif"){
			draw_set_color(c_green);
		}
		draw_set_halign(fa_center);
		draw_text_transformed(x + (dialogueBoxWidth/2), y+5, patronName, .7, .7, 0);
	//draw text
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text_ext_transformed(x + xBuffer, y + (stringHeight/1.8), dialoguePart, (stringHeight/1.8), dialogueBoxWidth * 1.65, .6, .6, 0);
	}
	else if(dialogueChoice2){
		if(charCount < string_length(dialogueText[dialogueSection][1])){
			charCount += .5;
		}

		dialoguePart = string_copy(dialogueText[dialogueSection][1], 1, charCount);

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
		else if(patronName == "Laif"){
			draw_set_color(c_green);
		}
		draw_set_halign(fa_center);
		draw_text_transformed(x + (dialogueBoxWidth/2), y+5, patronName, .7, .7, 0);
	//draw text
		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_text_ext_transformed(x + xBuffer, y + (stringHeight/1.8), dialoguePart, (stringHeight/1.8), dialogueBoxWidth * 1.65, .6, .6, 0);
	}
}
