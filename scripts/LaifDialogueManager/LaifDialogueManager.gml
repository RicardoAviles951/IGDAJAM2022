// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LaifDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	var conversation1 = ".";
	// will require dead line at the end of each conversation
	if(!firstArrival){
		dialogue = ["Hey there, new kid. I'll take a " + drink + ". Name's Laif. Maybe you've heard of me? Handsomest fairy in town, card shark extraordinaire, and the best damn co- actually, hehe, never mind.", "Kinda crazy that Rik actually hired someone else. That old bozo's been running this place solo for awhile now. But now that you're here, he gets to take a load off and I get someone new to have fun with.","Now kid, you may have noticed that people around here are, uh, how would I put it? Oh yeah! Irritating. They're all full of themselves. Quincy and his stories, Phillipa and her nobility, Brock and his work. All of them only think about themselves.","But not me. Oh no, not good ol' Laif. I've got your back, new kid. Got your back through and through. I just expect a little bit in return, yah know? An I scratch your back, you scratch mine situation. You get me?",["Yeah!","No."],["I knew you'd understand! You're a good kid.","Oh. I'm gonna be honest, I didn't see that coming. It's fine though, you'll warm up to me over time."], "Anyway, pass me my " + drink + "new kid.","."];
	}
	else if(firstArrival)
	{
		if ((happiness >= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			//dialogue = ["This is a dialogue test. This line is now longer in order to test how the text wraps. I hope it is wrapping nicely. I am now typing an even longer line to see how far the lines will go down. If this goes over then I have a pretty good idea how far they go.", "Now lets see if the dialogue box location switches when I switch stations.", "Hell yeah, it did!", "Now for branching dialogue.", "A 'yes' and 'no' box should appear to the left and right.", ["Yes, this is a long line.", "No, this is a longer line."], ["Option 1 selected.", "Option 2 selected."], "Wow, you selected an option!", "Let's see if you can do that again.", ["I can.", "I cannot."], ["Nice job!", "You gotta believe in yourself."], "You did it!", "The dialogue test is over."];
			conversation1 = ["This is happy sober dialogue 1", "This character is happy drunk.", "I want a " + drink ".", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			dialogue = conversation1;		
		}
		// happy and drunk text in text box
		else if ((happiness >= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is happy drunk dialogue 1", "This character is happy drunk.", "I want a " + drink ".", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			dialogue = conversation1;
		}
		// angry and sober text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			conversation1 = ["This is angry sober dialogue 1", "This character is angry sober.", "I want a " + drink ".", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			dialogue = conversation1	
		}
		// angry and drunk text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is angry drunk dialogue 1", "This character is angry drunk.", "I want a " + drink ".", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			dialogue = conversation1
		}
	}
	return dialogue;
}