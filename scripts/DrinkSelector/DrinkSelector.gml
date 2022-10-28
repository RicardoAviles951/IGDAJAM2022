// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrinkSelector(name){
	var drink = ".";
		switch(name)
		{
			case "Rik":
				randomize();
				drink = choose("Dragon's Treasure", "Orc Fashioned");
			break;
			
			case "Phillipa":
				randomize();
				drink = choose("Orc Fashioned", "Goblet of Fire");
			break;
			
			case "Quincy":
				randomize();
				drink = choose("Three Dwarves", "Drowned Sailor");
			break;
			case "Brock":
				randomize();
				drink = choose("Dragon's Treasure", "Dwarven Ale", "Orc Fashioned", "Three Dwarves");
			break;
			case "Joww":
				randomize();
				drink = choose("Dragon's Treasure", "Orc Fashioned");
			break;
		}
		return drink;
}