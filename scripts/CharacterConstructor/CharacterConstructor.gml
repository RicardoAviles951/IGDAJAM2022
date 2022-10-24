// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Character() constructor{
	randomize();
	if(!global.rikExists){charName = "Rik";}
	else if(global.rikExists && !global.quincyExists) {charName = "Quincy";}
	else if(global.rikExists && global.quincyExists && !global.phillipaExists) {charName = "Phillipa";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && !global.brockExists) {charName = "Brock";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && global.brockExists && !global.jowwExists) {charName = "Joww";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && global.brockExists && global.jowwExists) { 
		global.rikExists = false;
		global.quincyExists = false;
		global.phillipaExists = false;
		global.brockExists = false;
		global.jowwExists = false;
		charName = "Rik";
		}
	charHappiness = 100;
	charHappinessMax = charHappiness
	charDrunkenness = 5;
	charDrunkennessMax = charDrunkenness;
	charDrink = "";
	
	charDrinkSelect = function() {
		switch(charName)
		{
			case "Rik":
				if(charHappiness < 50){
					charDrink = "more Beer";
				}
				else if(charHappiness > 50){
					charDrink = "Beer";
				}
			break;
			case "Phillipa":
				if(charHappiness < 50){
					charDrink = "Vodka";
				}
				else if(charHappiness > 50){
					charDrink = "Wine";
				}
			break;
			case "Quincy":
				if(charHappiness < 50){
					charDrink = "Whiskey";
				}
				else if(charHappiness > 50){
					charDrink = "Scotch";
				}
			break;
			case "Brock":
				if(charHappiness < 50){
					charDrink = "Rum";
				}
				else if(charHappiness > 50){
					charDrink = "Beer";
				}
			break;
			case "Joww":
				if(charHappiness < 50){
					charDrink = "Vodka";
				}
				else if(charHappiness > 50){
					charDrink = "Gin";
				}
			break;
		}
	}
}