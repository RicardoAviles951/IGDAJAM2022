// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function QuincyDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	var conversation1 = ".";
	var conversation2 = ".";
	// will require dead line at the end of each conversation
	if(!firstArrival){
		dialogue = ["Hm, I think I will have a " + drink + "to start. Yes, definitely a " + drink + ".", "It looks like Rik finally found a helping hand! Splendid, splendid. To reiterate, my name is Quincy, local sell sword and part-time adventurer. I come to Rik's every now and then to sooth my soul.","Now that you're here though I have someone new to engage in conversation with. A pleasant turn of events, indeed.","I could regale you with such tales! My journey across the Broken Crag Cliffs! My duel against the Laughing Swordsman in the Golden Valley! Ah, such stories. Wonderful.","Before any stories though, a very important question for you. Are you a fan of swords?",["I love swords!","I'm an axe person."],["I knew it! You struck me as a sword person through and through. Wonderful, wonderful!","Axes? Never met an axe person before. Interesting. I'm…not sure how to address that."],"Regardless, having you here will help the atmosphere, I'm sure! Also, if I do get drunk, pardon my, um, sleepiness. Alcohol has a tendency to tire me out.","Now then, I’ll take my " + drink + " and be on my way.","."];
	}
	else if(firstArrival)
	{
		if ((happiness >= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			conversation1 = ["Well hey there! Hope the place is treating you well. Sometimes I like to partake of my own stock, haha. I'll have a (drink), please!", "I'm glad you decided to come and work here. I've been short staffed for awhile now and having you here is gonna be a huge help to me.", "What made you want to become a bartender, anyway?", ["I love the work.", "I needed money."], ["Really?! That's great to hear! Now I'm even more happy I hired you.","Ah, well, makes sense. Just make sure you do a good job, okay?"], "Regardless, whatever you do here, just make sure to keep the customers happy, okay? That's the most important thing.", "Ah, people are starting to stare. Maybe it's not a good look for the boss to be drinking on the job. Pass me my drink and I'll be on my way.", "."];
			//conversation2 = ["Hey hey, I'm back! Gonna partake of my own stock a bit. Could I get a (drink)?","If I haven't said it before, I'm so glad that you're working here. The extra pair of hands is great.","Just maybe, uh, don't do what I'm doing and drink on the job haha. You wouldn't do that, right?", ["Not a chance.","I would if I could."], ["Great! Glad I can trust you.","Well then, looks like I'll have to keep an eye on you."], "o	You know, running a bar is a crazy experience, let me tell yah. Meeting new people, making new drinks, having a good time all around. It's just a fun experience!", "Are you have a good time here?", ["Yes!","No."], ["I knew you would like it!", "Really? Seems like you picked the wrong job."], "Oh, looks like some people are looking over here. Pass me my drink so I can leave.", "."];
			//randomize();
			//dialogue = choose(conversation1, conversation2, conversation3);		
		}
		// happy and drunk text in text box
		else if ((happiness >= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is happy drunk dialogue 1 and I want a " + drink + ".", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//conversation2 = ["This is happy drunk dialogue 2 and I want a " + drink + ".", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//randomize();
			//dialogue = choose(conversation1, conversation2, conversation3);		
		}
		// angry and sober text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness >= (drunkennessMax / 2))){
			conversation1 = ["This is angry sober dialogue 1 and I want a " + drink + ".", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//conversation2 = ["This is angry sober dialogue 2 and I want a " + drink + ".", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//randomize();
			//dialogue = choose(conversation1, conversation2, conversation3);	
		}
		// angry and drunk text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkenness <= (drunkennessMax / 2))){
			conversation1 = ["This is angry drunk dialogue 1 and I want a " + drink + ".", "This character is angry drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//conversation2 = ["This is angry drunk dialogue 2 and I want a " + drink + ".", "This character is angry drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//randomize();
			//dialogue = choose(conversation1, conversation2, conversation3);	
			dialogue = conversation1
		}
	}
	return dialogue;
}