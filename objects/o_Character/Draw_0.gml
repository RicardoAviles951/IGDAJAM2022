/// @description Draw Health Bar and Sprite
// You can write your code in this editor

switch(character.charName){
	case "Rik":
		draw_sprite(s_Rik_Angry, 0, x, y);
		draw_healthbar(self.x, self.y + 180, self.x + 216, self.y + 200, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
	break;
	
	case "Phillipa":
		draw_sprite(s_Phillipa_Normal, 0, x + 20, y + 20);
		draw_healthbar(self.x + 20, self.y + 175, self.x + 162, self.y + 195, min((character.charHappiness/character.charHappinessMax) * 100), c_black, c_red, c_green, 0, true, true);
	break;
	
	case "Quincy":
		// draw Quincy draw_sprite(s_Rik, 0, x, y);
	break;
	
	case "Brock":
		// draw Brock draw_sprite(s_Rik, 0, x, y);
	break;
	
	case "Fairy":
		// draw Fairy draw_sprite(s_Rik, 0, x, y);
	break;
	
	case "Joww":
		// draw Joww draw_sprite(s_Rik, 0, x, y);
	break;
}


