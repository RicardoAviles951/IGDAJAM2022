/// @description Dialogue Box Variables
// You can write your code in this editor
dialogueText = ".";
dialogueSection = 0;

xBuffer = 10;
yBuffer = 10;

dialogueBoxWidth = sprite_get_width(s_dialogueBoxSprite) - (2*xBuffer);
stringHeight = string_height(dialogueText);
dialogueCreator = noone;
charCount = 0;
patronName = noone;