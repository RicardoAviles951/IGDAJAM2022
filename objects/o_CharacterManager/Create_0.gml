/// @description Character Manager
// You can write your code in this editor

// global variables to track if characters have spawnned
global.rikExists = false;
global.phillipaExists = false;
global.quincyExists = false;
global.laifExists = false;
global.brockExists = false;
// global variable's to track if paths are in use
// Path one goes to the center of the bar
global.BarPath1inUse = false;
// Path two goes to the left side of the bar
global.BarPath2inUse = false;
// Path three goes to the right side of the bar
global.BarPath3inUse = false;

// global variable tracking customer dissatisfaction
global.unsatisfiedCustomers = 0;
// global variable tracking customer satisfaction
global.satisfiedCustomers = 0;
// global variable checking if player has started conversation
global.conversationStarted = false;
// tutorial variable
global.tutorialOver = false;
// variables for character spawn timer
characterSpawnTimer = 1;


//show_debug_message(global.rikExists);