// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrinkSelector(name){
	var drink = ".";
		switch(name)
		{
			case "Rik":
				randomize();
				drink = choose("Dragon's Treasure", "Orc Fashioned", "Drowning Sailor");
			break;
			
			case "Phillipa":
				randomize();
				drink = choose("Orc Fashioned", "Goblet of Fire", "Drowning Sailor");
			break;
			
			case "Quincy":
				randomize();
				drink = choose("Three Dwarves", "Drowning Sailor", "Orc Fashioned");
			break;
			case "Brock":
				randomize();
				drink = choose("Dragon's Treasure", "Orc Fashioned", "Three Dwarves");
			break;
			case "Laif":
				randomize();
				drink = choose("Dragon's Treasure", "Goblet of Fire", "Orc Fashioned");
			break;
		}
		return drink;
}