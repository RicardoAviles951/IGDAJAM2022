var _x = event_data[? "posX"];
var _y = event_data[? "posY"];

x = _x;
y = _y; 
if !audio_is_playing(snd_shake){
	audio_play_sound(snd_shake,2,true);
}