
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
	finished,
	give
}

global.mixstate = mixstates.picking;

global.ID = noone;