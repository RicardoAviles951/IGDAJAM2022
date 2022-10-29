/// @description Draw Health Bar and Sprite
// You can write your code in this editor

switch(character.charName){
	case "Rik":
		draw_healthbar(self.x, self.y + 180, self.x + 216, self.y + 200, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
		if(!character.firstArrival){
			draw_sprite(s_Rik, 0, x, y);
			}
			else if (character.firstArrival){
			// happy and sober
				if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Rik_happy, 0, x, y);
				}
			// happy and drunk
				else if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Rik_happy, 0, x, y);
				}
			// angry and sober
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Rik_Angry, 0, x, y);
				}
			// angry and drunk
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Rik_Angry, 0, x, y);
				}
			}
		draw_sprite(s_Rik_Angry, 0, x, y);
	break;

	case "Phillipa":
		draw_healthbar(self.x + 20, self.y + 175, self.x + 162, self.y + 195, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
		if(!character.firstArrival){
				draw_sprite(s_Phillipa_Normal, 0, x + 20, y + 20);
			}
			else if (character.firstArrival){
			// happy and sober
				if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Phillipa_Happy, 0, x + 20, y + 20);
				}
			// happy and drunk
				else if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Phillipa_Drunk, 0, x + 20, y + 20);
				}
			// angry and sober
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Phillipa_Angry, 0, x + 20, y + 20);
				}
			// angry and drunk
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Phillipa_Drunk, 0, x + 20, y + 20);
				}
			}
	break;

	case "Quincy":
		draw_healthbar(self.x, self.y + 180, self.x + 216, self.y + 200, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
		if(!character.firstArrival){
			draw_sprite(s_Quincy_Normal, 0, x, y+4);
			}
			else if (character.firstArrival){
			// happy and sober
				if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Quincy_Happy, 0, x, y+4);
				}
			// happy and drunk
				else if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Quincy_Drunk, 0, x, y+4);
				}
			// angry and sober
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Quincy_Angry, 0, x, y+4);
				}
			// angry and drunk
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Quincy_Drunk, 0, x, y+4);
				}
			}
	break;

	case "Brock":
		draw_healthbar(self.x, self.y + 180, self.x + 216, self.y + 200, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
		if(!character.firstArrival){
			draw_sprite(s_Brock_Normal, 0, x, y+50);
			}
			else if (character.firstArrival){
			// happy and sober
				if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Brock_Happy, 0, x, y+50);
				}
			// happy and drunk
				else if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Brock_Drunk, 0, x, y+50);
				}
			// angry and sober
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Brock_Angry, 0, x, y+50);
				}
			// angry and drunk
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Brock_Drunk, 0, x, y+50);
				}
			}
	break;

	case "Laif":
		draw_healthbar(self.x, self.y + 180, self.x + 216, self.y + 200, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
		if(!character.firstArrival){
			draw_sprite(s_Laif_Normal, 0, x, y+122);
			}
			else if (character.firstArrival){
			// happy and sober
				if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Laif_Happy, 0, x, y+122);
				}
			// happy and drunk
				else if ((character.charHappiness >= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Laif_Drunk, 0, x, y+122);
				}
			// angry and sober
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness >= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Laif_Angry, 0, x, y+122);
				}
			// angry and drunk
				else if ((character.charHappiness <= (character.charHappinessMax / 2)) && (character.charDrunkenness <= (character.charDrunkennessMax / 2))){
					draw_sprite(s_Laif_Drunk, 0, x, y+122);
				}
			}
	break;
}
