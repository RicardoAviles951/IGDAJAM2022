/// @description Speak
// You can write your code in this editor

// create text box for character at bar
if(childTextBox == noone && !atBar)
{
	if(character.charName == "Rik"){
		childTextBox = instance_create_layer(self.x + 5, self.y - 70, "DialogueLayer", o_TextBox, character);
	}
	else if(character.charName == "Quincy"){
		childTextBox = instance_create_layer(self.x - 7, self.y - 70, "DialogueLayer", o_TextBox, character);
	}
	else if(character.charName == "Phillipa"){
		childTextBox = instance_create_layer(self.x - 10, self.y - 55, "DialogueLayer", o_TextBox, character);
	}
	else if(character.charName == "Brock"){
		childTextBox = instance_create_layer(self.x - 8, self.y - 20, "DialogueLayer", o_TextBox, character);
	}
	else if(character.charName == "Laif"){
		childTextBox = instance_create_layer(self.x - 40, self.y + 25, "DialogueLayer", o_TextBox, character);
	}
	childTextBox.openingText = OpeningLineChoice(character.charName, character.charHappiness, character.charHappinessMax, character.charDrunkenness, character.charDrunkennessMax, character.firstArrival);
	childTextBox.patronName = character.charName;
}


// leaving bar
if(self.x == path_get_point_x(pt_BarPath, 1) && global.BarPath1inUse && atBar)
{
	global.BarPath1inUse = false;
	path_reverse(pt_BarPath);
	drunkennessMeterOn = true;
	atBar = false;
}
else if(self.x == path_get_point_x(pt_BarPath2, 1) && global.BarPath2inUse && atBar)
{
	global.BarPath2inUse = false;
	path_reverse(pt_BarPath2);
	drunkennessMeterOn = true;
	atBar = false;
}
else if(self.x == path_get_point_x(pt_BarPath3, 1) && global.BarPath3inUse && atBar)
{
	global.BarPath3inUse = false;
	path_reverse(pt_BarPath3);
	drunkennessMeterOn = true;
	atBar = false;
}

// arriving at bar
if(self.x == path_get_point_x(pt_BarPath, 1) && !atBar)
{
	global.BarPath1inUse = true;
	happinessMeterOn = true;
	atBar = true;
	audio_play_sound(snd_doorchime,2,false);
}
else if(self.x == path_get_point_x(pt_BarPath2, 1) && !atBar)
{
	global.BarPath2inUse = true;
	happinessMeterOn = true;
	atBar = true;
	audio_play_sound(snd_doorchime,2,false);
}
else if(self.x == path_get_point_x(pt_BarPath3, 1) && !atBar)
{
	global.BarPath3inUse = true;
	happinessMeterOn = true;
	atBar = true;
	audio_play_sound(snd_doorchime,2,false);
}

