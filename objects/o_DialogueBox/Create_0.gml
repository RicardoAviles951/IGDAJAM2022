/// @description Dialogue Box Variables
// You can write your code in this editor
dialogueText = ".";
dialogueSection = 0;

//buffer for dialogue that is drawn
xBuffer = 10;
yBuffer = 10;

// width of dialogue box
dialogueBoxWidth = sprite_get_width(s_dialogueBoxSprite) - (2*xBuffer);
//height of dialogue text
stringHeight = string_height(dialogueText);
// customer that created dialogue
dialogueCreator = noone;
// type writer effect tracker
charCount = 0;
// name of customer
patronName = noone;
// variables for choice box 1 and 2
choiceBox1 = noone;
choiceBox2 = noone;
// variables to see if choice 1 or 2 is true
dialogueChoice1 = false;
dialogueChoice2 = false;
// variable to reference view_manager
viewManager = o_view_manager;
// variable for visibility timer
visibilityTimerOn = false;
visibilityTimer = 1;