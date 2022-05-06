var LOL = irandom_range(1,7);
var ID = noone;
switch (LOL) {
	case 1: ID = R1; break;
	case 2: ID = R2; break;
	case 3: ID = R3; break;
	case 4: ID = R4; break;
	case 5: ID = R5; break;
	case 6: ID = R6; break;
	case 7: ID = R7; break;
	default: break;
}
audio_play_sound(ID,1,false);