message = argument0;

draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
textProgress = min(string_length(message),floor(timerText/textSpeedFast));
var print = string_copy(message, 1, textProgress);
draw_text(room_width/2-1,room_height/2,print);
draw_text(room_width/2+1,room_height/2,print);
draw_text(room_width/2,room_height/2-1,print);
draw_text(room_width/2,room_height/2+1,print);
draw_set_color(c_white);
draw_text(room_width/2,room_height/2,print);
timerText++;
if (string_length(message) == textProgress) and (keyboard_check(vk_anykey)){
	timerText = 0;
	state ++;
	start = startVal;
	Music(state);
	audio_sound_gain(MUSICA, 1,0);
	audio_play_sound(MUSICA,2,true);
	audio_sound_gain(MUSICAfight, 0, 0);
	audio_play_sound(MUSICAfight,2,true);
	room_goto_next();
}