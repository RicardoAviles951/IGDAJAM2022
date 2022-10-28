// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function QuincyDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	var conversation1 = ".";
	var conversation2 = ".";
	var conversation3 = ".";
	// will require dead line at the end of each conversation
	if(!firstArrival){
		dialogue = ["I have arrived at the bar", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded"];
	}
	else if(firstArrival)
	{
		if ((happiness >= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			//dialogue = ["This is a dialogue test. This line is now longer in order to test how the text wraps. I hope it is wrapping nicely. I am now typing an even longer line to see how far the lines will go down. If this goes over then I have a pretty good idea how far they go.", "Now lets see if the dialogue box location switches when I switch stations.", "Hell yeah, it did!", "Now for branching dialogue.", "A 'yes' and 'no' box should appear to the left and right.", ["Yes, this is a long line.", "No, this is a longer line."], ["Option 1 selected.", "Option 2 selected."], "Wow, you selected an option!", "Let's see if you can do that again.", ["I can.", "I cannot."], ["Nice job!", "You gotta believe in yourself."], "You did it!", "The dialogue test is over."];
			conversation1 = ["Well hey there! Hope the place is treating you well. Sometimes I like to partake of my own stock, haha. I'll have a (drink), please!", "I'm glad you decided to come and work here. I've been short staffed for awhile now and having you here is gonna be a huge help to me.", "What made you want to become a bartender, anyway?", ["I love the work.", "I needed money."], ["Really?! That's great to hear! Now I'm even more happy I hired you.","Ah, well, makes sense. Just make sure you do a good job, okay?"], "Regardless, whatever you do here, just make sure to keep the customers happy, okay? That's the most important thing.", "Ah, people are starting to stare. Maybe it's not a good look for the boss to be drinking on the job. Pass me my drink and I'll be on my way.", "."];
			conversation2 = ["Hey hey, I'm back! Gonna partake of my own stock a bit. Could I get a (drink)?","If I haven't said it before, I'm so glad that you're working here. The extra pair of hands is great.","Just maybe, uh, don't do what I'm doing and drink on the job haha. You wouldn't do that, right?", ["Not a chance.","I would if I could."], ["Great! Glad I can trust you.","Well then, looks like I'll have to keep an eye on you."], "o	You know, running a bar is a crazy experience, let me tell yah. Meeting new people, making new drinks, having a good time all around. It's just a fun experience!", "Are you have a good time here?", ["Yes!","No."], ["I knew you would like it!", "Really? Seems like you picked the wrong job."], "Oh, looks like some people are looking over here. Pass me my drink so I can leave.", "."];
			conversation3 = ["Look at this! You're a natural! Glad you're getting along so well. Now, how about you make me a (drink).","You're a real life saver, you know that? You taking this job really saved my bacon. Without you, this place may have gone under!","But now we're gonna have more people coming in then ever before. I just know it.","You think you’re ready for that when it happens?", ["I definitely am!","Uh, I'm not sure."],["I knew it! I knew you'd be ready! When that day comes, your bartending skills will shine.", "Oh, really? Well, looks like I'll have to do more work to train you later then."], "But yes, more people means more money, and more money means hiring more bartenders. Soon I won't even have to lift a finger!","Just you up front commanding an army of bartenders and me in the back planning out franchises!","o	Well, enough dreaming. I gotta get back to work. Though I do need my drink, so pass it down my way.","."];
			randomize();
			dialogue = choose(conversation1, conversation2, conversation3);		
		}
		// happy and drunk text in text box
		else if ((happiness >= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is happy drunk dialogue 1", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation2 = ["This is happy drunk dialogue 2", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation3 = ["This is happy drunk dialogue 3", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			randomize();
			dialogue = choose(conversation1, conversation2, conversation3);		
		}
		// angry and sober text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			conversation1 = ["This is angry sober dialogue 1", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation2 = ["This is angry sober dialogue 2", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation3 = ["This is angry sober dialogue 3", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			randomize();
			dialogue = choose(conversation1, conversation2, conversation3);	
		}
		// angry and drunk text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is angry drunk dialogue 1", "This character is angry drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation2 = ["This is angry drunk dialogue 2", "This character is angry drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			conversation3 = ["This is angry drunk dialogue 3", "This character is angry drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			randomize();
			dialogue = choose(conversation1, conversation2, conversation3);	
		}
	}
	return dialogue;
}