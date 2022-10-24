
enum gamestates{
		idle,
		bar,
		mix,
}
global.gamestate = gamestates.bar;

enum mixstates{
	picking,
	shaking,
	pouring,
	finished
}

global.mixstate = mixstates.picking;

global.ID = noone;