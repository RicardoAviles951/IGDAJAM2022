if tapped == false{
TweenEasyScale(1,1,1.2,1.2,0,15,EaseInOutQuad,TWEEN_MODE_BOUNCE);
image_index = 1;
tapped = true;
var nextrm = function(){
	audio_play_sound(snd_doorchime,1,false);
	room_goto(rm_game);
}

var t = time_source_create(time_source_game,1.5,time_source_units_seconds,nextrm);
time_source_start(t);
}