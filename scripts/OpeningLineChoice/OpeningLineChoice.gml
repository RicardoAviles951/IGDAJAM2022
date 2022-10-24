// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OpeningLineChoice(name, drink){
	text = ".";
	if(name == "Rik"){
		text = "Hey there! Name's " + name + ". I'll be your boss at this bar. Let's get you started. Make me a " + drink + ".";
	}
	else if(name == "Quincy"){
		text = "Greetings friend. My name is " + name + ". Lovely day for a drink, yes? I'll have a " + drink + " please.";
	}
	else if(name == "Phillipa"){
		text = "Hello. My name is " + name + ", in case you were unaware. Make me a " + drink + ".";
	}
	else if(name == "Brock"){
		text = "Hi. Could I get a " + drink + ". Name's " + name + " by the way.";
	}
	else if(name == "Joww"){
		text = "Oi! Name's " + name + ". I'm thirsty. Make me a " + drink + ".";
	}
	
	return text;
}