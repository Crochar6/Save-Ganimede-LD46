if (room != rInit1) instance_destroy();
var o = 1;
if (start < 0) {
switch state {
	case 0: {
		Text("The GANIMEDE airship was our last hope."); 
		oSplashart.sprite_index = sSplashart1;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		break;
	}
	case 1: {
		Text("The last bastion standing to win the war.\nEveryone's last effort spent on building GANIMEDE.");
		oSplashart.sprite_index = sSplashart2;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		
		break;
	}
	case 2: {
		Text("When it was constructed, a spy revealed our location\nAnd now the enemy is striking us with overwhelming force\ninterfering our communications.");
		oSplashart.sprite_index = sSplashart3;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		break;
	}
	case 3: {
		TextCentre("Badly damaged, I've managed to escape.\nI need to seek help. I'm being followed.");
		oSplashart.sprite_index = sBlack;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		
		break;
	}
	case 4: {
		TextCentre1("With this little fuel,\nIf I am to keep GANIMEDE on the air...");
		oSplashart.sprite_index = sBlack;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		
		break;
	}
	case 5: {
		TextCentreNext("First I need to keep myself alive!");
		oSplashart.sprite_index = sBlack;
		oSplashart.image_alpha = min(1, oSplashart.image_alpha + alphaSpeed);
		
		audio_sound_gain(musicB3, 0,1000*o);
		
		break;
	}
	case 6: {
		
		
		break;
	}
	
	default: break;
}

//if (string_length(message) == textProgress) and (keyboard_check(vk_space)){
//	timerText = 0;
//	state ++;
//}

} else {
	start --;
	if (room == rInit1) oSplashart.image_alpha = max(0, oSplashart.image_alpha - alphaSpeed*2);
}
