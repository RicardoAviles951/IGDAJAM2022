/// @description Insert description here
// You can write your code in this editor

if(global.unsatisfiedCustomers == 2){
	game_end();
}
if(global.satisfiedCustomers == 3){
	game_end();
}
if(global.rikExists == false || global.phillipaExists == false || global.quincyExists == false || global.laifExists == false || global.brockExists == false){
	if(characterSpawnTimer > 0){
		characterSpawnTimer = characterSpawnTimer-delta_time/1000000;
	}
	else if (characterSpawnTimer <= 0){
		instance_create_layer(x, y, "Instances", o_Character);
		characterSpawnTimer = 60;
	}
}