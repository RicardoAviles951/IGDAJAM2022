// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BrockDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	var conversation1 = ".";
	var conversation2 = ".";
	var conversation3 = ".";
	// will require dead line at the end of each conversation
	if(!firstArrival){
		dialogue = ["I think I'll have a " + drink + ".",
		"So, Rik hired a new hand? That's good."+
		" Glad to see another person doing honest work in this town."+
		" I said it already, but the name's Brock. I work in the mines on the far side of town.",
		"It's honest work, to be sure, but...",
		"It's.",
		"So.",
		"Exhausting.",
		"People talk about us dwarves and our hearty constitutions, but by the gods, after eight hours down there all I want to do is kick back and relax.",
		"You know, never thought about it till now, but it's weird that I work all day just so you can work all night. Like I want to relax sure, but it hurts that I relax at your expense.",
		"Maybe we should trade jobs for a day, and see what it's like from the other's perspective haha. How's that sound?",
		["Sounds cool.", "Eh, I'm fine."],
		["Ha, I knew you'd entertain the idea.", "Don't even want to entertain the idea? Wow."],
		"Well, whatever. Wouldn't happen today anyway. Now, where's my " + drink + ".", "."];

	}
	else if(firstArrival)
	{
		if ((happiness >= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
			
			conversation1 = ["Ah, my fellow worker. Could I get a " + drink + "please?",
							"You know, Rik's been running this place solo for so long, it's weird to be served by someone who isn't him.",
							"Now he's the boss, so he gets to go around, telling you what to do, yelling orders and everything. Just like Foreman Grool down in the mines. Ugh, what a terrible boss.",
							"Hey, be honest with me, is Rik a good boss?",
							["No", "Yes"],
							["Ah, I knew it! No one's boss is good. They're all good for nothing in my opinion.",
							"Really? To be honest, I don't believe you. Huh, maybe you're... never mind."],
							"Anyway, I think that we should get rid of bosses altogether. I mean it. No bosses, no lords or ladies. I mean, what are we doing still having lords and ladies? What has Lord Kalevi or Lady Phillipa done for the little guy?",
							"But hey, not something I can dwell on right now. Gotta relax. Anyway, where's my " + drink + "?", "."];
		
			dialogue = choose(conversation1);		
		}
		// happy and drunk text in text box
		else if ((happiness >= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
			conversation1 = ["Ah, new face! New blood! Comrade, dare I say. Could I get a " + drink + "?",
							"This is it! This is what I'm talking about! Good drinks, good atmosphere, good friends! And you! You're a pleasant surprise!",
							"Look at us, just two workers chatting the night away. It's so nice to have someone else here who understands the plight of the people here. When Rik was behind the counter, he would just tune me out as I talked, but you, you care! It's a wonderful change.",
							"By the way, don't think I've asked you, why'd you start working here in the first place? I mean, joining a place that has no other workers? Kind of bold.",
							["Needed money", "Want my own bar"],
							["Ah, of course! See, that's what this town does. Pushes you into servitude under someone else.","Really? You want to be a boss someday? Ugh, can't imagine it."],
							"Anyway, if you could pass me my " + drink + "that'd be great!", "."];

			dialogue = choose(conversation1);		
		}
		// angry and sober text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkennessMax >= (drunkenness / 2))){
			conversation1 = ["Hey. I'll take a "+ drink + ".",
							"This place...ugh, I'm just not feeling it tonight.",
							"Like, I'm not expecting a great time every time, but I thought tonight would be different, especially with you here.",
							"Look, I just want to say this, worker to worker. You gotta step it up a bit. Not for your boss or anything, but for the people here and, most importantly, yourself.",
							"Rik might be pleasant, but I'm sure he'd fire you in a second if he saw how you were treating people, especially me. I'm a regular. I don't have pull, but Rik does notice when I'm not happy, and that shouldn't fall on you.",
							"You get what I'm saying, right?",
							["Yes", "No"],
							["Knew you would. You're smart.", "Thought I couldn't spell it out any clearer. Oh well."],
							"Anyway, pass me my " + drink + ".", "."]; 

			dialogue = choose(conversation1);	
		}
		// angry and drunk text in text box
		else if ((happiness <= (happinessMax / 2)) && (drunkennessMax <= (drunkenness / 2))){
			conversation1 = ["Oi! Get me a " + drink + "!", ".",
							"Agh! The atmosphere tonight is off. Off! When I work a hard shift in the mine, I want to come here and relax, but I can't relax if THIS is what the place is like.",
							"And I don't mean to point fingers, but I gotta say, you're not doing much to help the situation. We're fellow workers, right? So help a fellow worker out.",
							"Here's a thought, an idea, a plan. How about you, you make this next drink free? I think that would probably fix a lot of the problems I'm having right now.",
							"So how 'bout it? Free drink for your fellow worker?",
							["Sure!", "Can't do it."],
							["Ah, that's the spirit! That's what I like to see! I won't forget this, I promise!", "Still beholden to the bosses, eh! The profits! Agh, I should've known!"],
							"Now hand me my " + drink + "!", "."]; 
	
			dialogue = choose(conversation1);	
		}
	}
	return dialogue;
}