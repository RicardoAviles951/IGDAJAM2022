/// @description Character Manager
// You can write your code in this editor

// global variables to track if characters have spawnned
global.rikExists = true;
global.phillipaExists = false;
global.quincyExists = true;
global.jowwExists = true;
global.brockExists = true;

// global variable's to track if paths are in use
global.BarPath1inUse = true;
global.BarPath2inUse = true;
global.BarPath3inUse = false;

// global variable tracking customer dissatisfaction
global.unsatisfiedCustomers = 0;
// global variable tracking customer satisfaction
global.satisfiedCustomers = 0;
// global variable checking if player has started conversation
global.conversationStarted = false;

// variables for character spawn timer
characterSpawnTimer = 1;


//show_debug_message(global.rikExists);