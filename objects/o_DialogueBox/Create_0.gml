/// @description Dialogue Box Variables
// You can write your code in this editor

// variable for dialogue string
dialogueText = ".";
// variable for section of dialogue being written
dialogueSection = 0;

// buffers for dialogue boxes
xBuffer = 10;
yBuffer = 10;

// width of dialogue box
dialogueBoxWidth = sprite_get_width(s_dialogueBoxSprite) - (2*xBuffer);
// height of dialogue text
stringHeight = string_height(dialogueText);
// reference to character creating dailogue
dialogueCreator = noone;
// tracker for typed text
charCount = 0;
// name of character
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
