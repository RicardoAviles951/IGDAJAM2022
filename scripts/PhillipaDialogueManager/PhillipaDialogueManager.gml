// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PhillipaDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	var conversation1 = ".";
	var conversation2 = ".";
	var conversation3 = ".";
	// will require dead line at the end of each conversation
	if(!firstArrival){
		dialogue = [" Hm, yes. I believe a " + drink + " will do.", "Now then new hire, you know my name, but I must ask, do you know who I am?", ["Lord Kalevi's Wife","No idea."], ["Good! You're not as dull as you look.","Ugh, I should have expected that."], "I am Lady Phillipa, wife of Lord Kalevi and the most beautiful, graceful, and intelligent member of the court of the Town of Aldar. I come here to partake in the merriment of Aldar's local color and better understand the people I rule.","My husband believes it is not important to engage in such matters, but I find it enlightening and enjoyable. He also doesn't like me getting drunk since I apparently get, what were his words? Ah yes, rambunctious.","No matter. I will do what I want and you will be sure to do as you'reyour told by me. Now, where is my "+ drink + "?","."];
	}
	else if(firstArrival)
	{
		if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
			//dialogue = ["This is a dialogue test. This line is now longer in order to test how the text wraps. I hope it is wrapping nicely. I am now typing an even longer line to see how far the lines will go down. If this goes over then I have a pretty good idea how far they go.", "Now lets see if the dialogue box location switches when I switch stations.", "Hell yeah, it did!", "Now for branching dialogue.", "A 'yes' and 'no' box should appear to the left and right.", ["Yes, this is a long line.", "No, this is a longer line."], ["Option 1 selected.", "Option 2 selected."], "Wow, you selected an option!", "Let's see if you can do that again.", ["I can.", "I cannot."], ["Nice job!", "You gotta believe in yourself."], "You did it!", "The dialogue test is over."];
			conversation1 = ["Ah yes, the new hire. I think I will have a " +drink+".","I was not expecting you to be doing so well. Perhaps I underestimated you a bit. Perhaps I underestimated the people of Aldar in general, but that is why it is so important to for me to walk among them and get a measure of them.","This is perhaps a foolish thing to ask but, what are your thoughts on these people?",["They're great! ","I've met better."],["Really? I must say that is shocking. But also encouraging.","Ah, I knew I was right. How disappointing."],"Regardless, the people here need a strong hand to guide them and I believe that my husband and I can be that hand. Or at least me. My husband is a bit...well I shouldn't say.","Perhaps that is a better question. You have not been here long, but you must know how the town runs by now. What do you think? Does my husband run Aldar well?",["No, he doesn't.","Yes, he does."],["Ah, bold to say that to his wife, but I respect and admire the honesty.","Do not be shy, new hire, you may speak freely to me. Though I guess you could truly believe that he runs this town well."],"Regardless, I need to do more research on the people here. Pass me my " + drink + " so I may be on my way.","."]
			//conversation2 = ["Hey hey, I'm back! Gonna partake of my own stock a bit. Could I get a" + drink + "?","If I haven't said it before, I'm so glad that you're working here. The extra pair of hands is great.","Just maybe, uh, don't do what I'm doing and drink on the job haha. You wouldn't do that, right?", ["Not a chance.","I would if I could."], ["Great! Glad I can trust you.","Well then, looks like I'll have to keep an eye on you."], "o	You know, running a bar is a crazy experience, let me tell yah. Meeting new people, making new drinks, having a good time all around. It's just a fun experience!", "Are you have a good time here?", ["Yes!","No."], ["I knew you would like it!", "Really? Seems like you picked the wrong job."], "Oh, looks like some people are looking over here. Pass me my drink so I can leave.", "."];
			//conversation3 = ["Look at this! You're a natural! Glad you're getting along so well. Now, how about you make me a" + drink + ".","You're a real life saver, you know that? You taking this job really saved my bacon. Without you, this place may have gone under!","But now we're gonna have more people coming in then ever before. I just know it.","You think you’re ready for that when it happens?", ["I definitely am!","Uh, I'm not sure."],["I knew it! I knew you'd be ready! When that day comes, your bartending skills will shine.", "Oh, really? Well, looks like I'll have to do more work to train you later then."], "But yes, more people means more money, and more money means hiring more bartenders. Soon I won't even have to lift a finger!","Just you up front commanding an army of bartenders and me in the back planning out franchises!","o	Well, enough dreaming. I gotta get back to work. Though I do need my drink, so pass it down my way.","."];
			dialogue = conversation1;	
		}
		// happy and drunk text in text box
		else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
			conversation1 = ["Ah! New hire! A "+ drink +", if you will!", 
			"Ugh, everyone here is so boring, so ordinary. I wish I was at the court right now. Ah, the people there, so beautiful, so refined! And at the top of it all, me!", 
			"What made you want to become a bartender, anyway?",
			" You should see me in court, new hire. I am a magician! Wooing lords and ladies left and right. Just the other day Jarl Olsen offered to steal me from my husband! A preposterous suggestion, but a flattering one.",
			"Of course, I told my husband and he banished the Jarl from his court. You should have seen his face. He stared at me with these puppy dog eyes and I just turned away. The power I felt! Magnificent!",
			["It is impressive!","It's whatever"],
			["It is! I knew you would take notice. You are a fine citizen of Aldar.","It's...whatever? Whatever?! It is incredible! Ugh, how can you not see that?."],
			"Though perhaps my power is nothing to someone like you who gets to hear everyone's tales. The stories you must hear. The rumors. The secrets! I wish I could hear them too.",
			"Ah, no matter. Pass me my "+drink+" ! I must walk among the people of Aldar again!",
			"."];
			//conversation2 = ["This is happy drunk dialogue 2 and I want a " + drink + ".", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//conversation3 = ["This is happy drunk dialogue 3 and I want a " + drink + ".", "This character is happy drunk.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//randomize();
			dialogue = conversation1;	
		}
		// angry and sober text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
			conversation1 = ["New hire, make me a "+drink+".","The people here are talking, new hire, and they are talking about you. Not in a good way I might add. As the Lady of Aldar, I must say that you  are disappointing the patrons which disappoints me as well.",
			" But it is not ladylike to merely stay angry at someone and not try and help them improve. So I will do just that! Now listen well, new hire, and I am sure your lot here will improve.",
			"First, stand up straight. Posture is key to making a good impression. A tall and confident look is better than a hunched over one.",
			"Next, speak clearly and firmly. People take notice of someone who tries to command and room, and if you do it right, they will respect you more.",
			"Third, know when and how to smile. Smiling is a powerful tool in conversation and knowing the subtle differences in smiling is important. Smiling at a lover is different than smiling at an enemy after all.",
			"  Finally, if anyone is in your way, deal with them quickly. Enemies must not be tolerated, both at court and at a bar.",
			"Did you get all that?",
			["Yes.","No."],["Good, then everything should work out fine.","Ugh. Of course, you didn't. Why did I expect anything different?"],
			"Anyway, bring me me a "+drink+ "so I may be on my way.", "."];
			//conversation2 = ["This is angry sober dialogue 2 and I want a " + drink + ".", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//conversation3 = ["This is angry sober dialogue 3 and I want a " + drink + ".", "This character is angry sober.", "Here is a choice", ["A","B"], ["You chose A.","You chose B."], "The Dialogue has concluded", "."];
			//randomize();
			dialogue = conversation1;
		}
		else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
			conversation1 = ["New hiiiire! Oh new hiiiire! "+drink+ ". Now!",
			"Ugh, new hire, I had such high hopes for you! Such high hopes! But you aren't treating people here with the respect they deserve, especially me, the Lady of Aldar!",
			"Sure, I've got a few drinks in me, but that is no reason to not consider my happiness. I am not some wench to be thrown about!",
			"  I am Lady Phillipa Kalevi of Aldar! Beautiful beyond beauty! Graceful beyond grace! Really smart! I must be treated like a lady! Like a queen!",
			"Bah, you don't understand! You and my husband. You and he are the same. You both have no idea who you are in the presence of. It shows in the shoddiness of your job and the shoddiness of his governance.",
			"This town would be better with me at the helm. You agree, yes?",
			["Of course.","I disagree."],["Haha, perhaps you are not as shoddy as I thought!"," Bah! Of course, you would defend my husband. Like I said, you are one and the same!"], "."];
			dialogue = conversation1
		}
		
	}
	return dialogue;
}