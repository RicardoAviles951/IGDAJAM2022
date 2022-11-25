function Character() constructor{
	randomize();
	if(!global.rikExists){charName = "Rik";}
	else if(global.rikExists && !global.quincyExists) {charName = "Quincy";}
	else if(global.rikExists && global.quincyExists && !global.phillipaExists) {charName = "Phillipa";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && !global.brockExists) {charName = "Brock";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && global.brockExists && !global.laifExists) {charName = "Laif";}
	else if(global.rikExists && global.quincyExists && global.phillipaExists && global.brockExists && global.laifExists) { 
		global.rikExists = false;
		global.quincyExists = false;
		global.phillipaExists = false;
		global.brockExists = false;
		global.laifExists = false;
		charName = "Rik";
		}
	charHappiness = 100;
	charHappinessMax = charHappiness
	charDrunkenness = 5;
	charDrunkennessMax = charDrunkenness;
	charDrunkennessTime = charDrunkenness;
	charDrink = "";
	firstArrival = false;
	charOrdering = false;
	switch(charName){
		case "Rik":
			charHappiness = 155;
			charHappinessMax = charHappiness
			charDrunkenness = 8;
			charDrunkennessMax = charDrunkenness;
			charDrunkennessTime = charDrunkenness;
		break;
		
		case "Phillipa":
			charHappiness = 120;
			charHappinessMax = charHappiness
			charDrunkenness = 3;
			charDrunkennessMax = charDrunkenness;
			charDrunkennessTime = charDrunkenness;
		break;

		case "Quincy":
			charHappiness = 180;
			charHappinessMax = charHappiness
			charDrunkenness = 8;
			charDrunkennessMax = charDrunkenness;
			charDrunkennessTime = charDrunkenness;
		break;
	
		case "Brock":
			charHappiness = 165;
			charHappinessMax = charHappiness
			charDrunkenness = 12;
			charDrunkennessMax = charDrunkenness;
			charDrunkennessTime = charDrunkenness;
		break;
	
		case "Laif":
			charHappiness = 155;
			charHappinessMax = charHappiness
			charDrunkenness = 12;
			charDrunkennessMax = charDrunkenness;
			charDrunkennessTime = charDrunkenness;
		break;
	}
	
	charDrinkSelect = function() {
		var drink = ".";
		switch(charName)
		{
			case "Rik":
				randomize();
				drink = choose("Dragon's Treasure", "Dwarven Ale", "Orc Fashioned");
				//if(charHappiness < 50){
				//	charDrink = "more Beer";
				//}
				//else if(charHappiness > 50){
				//	charDrink = "Beer";
				//}
			break;
			case "Phillipa":
				//if(charHappiness < 50){
				//	charDrink = "Vodka";
				//}
				//else if(charHappiness > 50){
				//	charDrink = "Wine";
				//}
			break;
			case "Quincy":
				//if(charHappiness < 50){
				//	charDrink = "Whiskey";
				//}
				//else if(charHappiness > 50){
				//	charDrink = "Scotch";
				//}
			break;
			case "Brock":
				//if(charHappiness < 50){
				//	charDrink = "Rum";
				//}
				//else if(charHappiness > 50){
				//	charDrink = "Beer";
				//}
			break;
			case "Laif":
				//if(charHappiness < 50){
				//	charDrink = "Vodka";
				//}
				//else if(charHappiness > 50){
				//	charDrink = "Gin";
				//}
			break;
		}
		return drink;
	}
}