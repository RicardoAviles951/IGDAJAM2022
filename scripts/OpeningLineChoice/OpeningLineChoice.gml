// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OpeningLineChoice(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival){
	text = ".";
	switch(name){
		case "Rik":
			show_debug_message("entered switch");
			// first arrival text in text box
			if(!firstArrival){
				text = "Hey there! Hope you’re excited for the first day. Name’s Rik. Tap me to start.";
			}
			else if (firstArrival){
			// happy and sober text in text box
				if ((happiness >= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
					text = "Seem’s like you’re doing a good job! Now, what will I get?";
				}
			// happy and drunk text in text box
				else if ((happiness >= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
					text = "Seem’s like you’re doing a good job! Now, what will I get?";
				}
			// angry and sober text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
					text = "Hey! I’m hearing bad things from customers. Time for a test!";
				}
			// angry and drunk text in text box
				else if ((happiness <= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
					text = "…*hic*…Hey! Customer’re saying *hic* you ain’t great. Make me something…*hic*";
				}
			}
		break;
		
		case "Quincy":
		
		break;
		
		case "Phillipa":
		
		break;
		
		case "Brock":
		
		break;
		
		case "Fairy":
		
		break;
		
		case "Joww":
		
		break;
	//if(name == "Rik"){
	//	text = "Hey there! Name's " + name + ". I'll be your boss at this bar. Let's get you started. Make me a " + drink + ". And make it fast my guy.";
	//}
	//else if(name == "Quincy"){
	//	text = "Greetings friend. My name is " + name + ". Lovely day for a drink, yes? I'll have a " + drink + " please.";
	//}
	//else if(name == "Phillipa"){
	//	text = "Hello. My name is " + name + ", in case you were unaware. Make me a " + drink + ".";
	//}
	//else if(name == "Brock"){
	//	text = "Hi. Could I get a " + drink + ". Name's " + name + " by the way.";
	//}
	//else if(name == "Joww"){
	//	text = "Oi! Name's " + name + ". I'm thirsty. Make me a " + drink + ".";
	//}
	}
	return text;
}