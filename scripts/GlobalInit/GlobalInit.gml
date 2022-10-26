
enum gamestates{
		idle,
		bar,
		mix,
}
global.gamestate = gamestates.bar;

enum mixstates{
	picking,
	action,
	shaking,
	pouring,
	finished
}

global.mixstate = mixstates.picking;

global.ID = noone;