// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RikDialogueManager(name, happiness, happinessMax, drunkenness, drunkennessMax, firstArrival, drink){
	var dialogue = ".";
	
	if(name == "Rik")
	{
		dialogue = ["This is a dialogue test. This line is now longer in order to test how the text wraps. I hope it is wrapping nicely. I am now typing an even longer line to see how far the lines will go down. If this goes over then I have a pretty good idea how far they go.", "Now lets see if the dialogue box location switches when I switch stations.", "Hell yeah, it did!", "Now for branching dialogue.", "A 'yes' and 'no' box should appear to the left and right.", ["Yes, this is a long line.", "No, this is a longer line."], ["Option 1 selected.", "Option 2 selected."], "Wow, you selected an option!", "Let's see if you can do that again.", ["I can.", "I cannot."], ["Nice job!", "You gotta believe in yourself."], "You did it!", "The dialogue test is over."];
	}
	
	return dialogue;
}