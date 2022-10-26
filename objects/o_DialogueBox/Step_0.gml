/// @description Temporary Continuing dialogue
// You can write your code in this editor

if(visibilityTimerOn){
	if(visibilityTimer > 0){
		visibilityTimer--
	}
	else if(visibilityTimer <= 0){
		self.visible = true;
		visibilityTimerOn = false;
		visibilityTimer = 1;
	}
}