// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FinalDrinkSprite(){
	var drink = o_recipe_checker;
	if drink.correct{
	switch(drink.current_drink){
		case drink.dragons_treasure:
			sprite_index = s_drag_treasure;
		break;
		
		case drink.three_dwarves:
			sprite_index = s_threedwarves;
		break;
		
		case drink.orc_fashioned:
			sprite_index = s_orc_fash;
		break;
		
		case drink.goblet_fire:
			sprite_index = s_gobletfire;
		break;
		
		case drink.drowning_sailor:
			sprite_index = s_drownedsailor;
		break;
		
	}
	}
	else{
		switch(type){
			case "martini":
				sprite_index = choose(s_drownedsailor,s_drag_treasure,s_orc_fash);
			break;
			
			case "chalice":
				sprite_index = choose(s_threedwarves,s_gobletfire);
			break;
		}
	}
}