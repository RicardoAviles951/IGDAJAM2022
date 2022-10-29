// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OpeningLineChoice(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival){
	text = ".";
	switch(name){
		case "Rik":
			show_debug_message("entered switch");
			// first arrival text in text box
			if(!firstArrival){
				text = "Hey there! Hope you're excited for the first day. Name's Rik. Tap me to start.";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "Seem's like you're doing a good job! Now, what will I get?";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "You're...*hic*...doing great! But...I gotta keep yah *hic* on yah toes!";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "Hey! I'm hearing bad things from customers. Time for a test!";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "...*hic*...Hey! Customer're saying *hic* you ain't great. Make me something...*hic*";
				}
			}
		break;
		
		case "Quincy":
			if(!firstArrival){
				text = "Greetings friend. You must be new. My name is Quincy. May I partake of a drink?";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "You're doing wonderful friend. I would like to partake of another drink.";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "You are...*zzzz*....a great job. May I...*zzzzz*.... another drink?";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "My friend, you're starting to slip. People are noticing. Another drink may fix that though.";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "I believe...*zzzzzz*... are finding you lacking. You need to...*zzzz*... step up to the challenge.";
				}
			}
		break;
		
		case "Phillipa":
			if(!firstArrival){
				text = "A new hire? Ugh, my name is Phillipa. Lady Phillipa. I would like a drink.";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "For a new hire, you're doing quite well. I expect you to keep it up. Another drink please.";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "Ah! If it isn't my new favorite person! Everyone else here…blegh. But you! Another drink!";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "It seems you're screwing up some, new hire. As a lady, it is my obligation to give you another chance.";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "You! New hire! I have qualms! Make me a drink fit for a lady!";
				}
			}
		break;
		
		case "Brock":
					if(!firstArrival){
				text = "Ah, ain't seen you 'round before. Name's Brock. Could I get something to drink?";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "Hello! I'm back again. Was wondering if I could get another drink?";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "Oi! New face! It’s good ta' see ya! Wanted to get another drink, if yah don't mind?";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "Ugh, this place ain't doin' me any favors today. Maybe another drink will fix that?";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "Bah! Come on! I need another drink! Maybe it'll get the bad taste of this place out of my mouth.";
				}
			}
		break;
		
		case "Laif":
					if(!firstArrival){
				text = "Well look at this. Somebody new! Name's Laif. How's life?";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "New kid! Great to see yah! I'm looking to get a drink.";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "Well if it ain't the new kid! Rik's got a talent on his hands with you! Now, what do I want to drink.";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
					text = "New kid, new kid, new kid. Gotta shape up. Now, what do I want to drink?";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
					text = "New! Kid! You gotta step it up! Noooow whadda I want to drink?";
				}
			}
		break;
	}
	return text;
}