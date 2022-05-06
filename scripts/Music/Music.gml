var volume = 1;
var o =3;
switch argument0 {
	
	case 0:
	var m = musicA1;
	audio_sound_gain(m, volume,0);
	audio_play_sound(m,1,false);
	break;
	
	case 1:
	var m = musicA2;
	audio_sound_gain(m, volume,0);
	audio_play_sound(m,1,false);

	break;
	
	case 2:
	var m = musicA3;
	audio_sound_gain(m, volume,0);
	audio_play_sound(m,1,false);
	var m = musicB2;
	audio_sound_gain(m, 0,0);
	audio_sound_gain(m, 1,1000*o);
	audio_play_sound(m,1,false);
	audio_sound_gain(musicB1, 0,1000*o);
	break;
	
	case 3:
	var m = musicA4;
	audio_sound_gain(m, volume,0);
	audio_play_sound(m,1,false);
	var m = musicB3;
	audio_sound_gain(m, 0,0);
	audio_sound_gain(m, 1,1000*o);
	audio_play_sound(m,1,true);
	audio_sound_gain(musicB2, 0,1000*o);
	break;
	
	case 4:
	var m = musicA5;
	audio_sound_gain(m, volume-0.4,0);
	audio_play_sound(m,1,false);
	audio_sound_gain(musicB3, 0,1000*o*2);
	
	case 5:
	
	
	
	case 6:
	
	
	case 7:
	
	
	default: break;
	
}