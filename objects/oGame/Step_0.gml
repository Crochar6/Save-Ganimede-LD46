if (room == rGame) {
	// Back Rocks
	SpawnBack();
	SpawnObstacle();
	SpawnRain(20);
	SpawnEnemy1();
	SpawnSub();
	if (choose(0,1) == 0)instance_create_layer(600,WATER_Y,"Back1",oWaterEffect);

	//if (room = rGame) {
	//	audio_sound_gain(sfxWhite,max(0,(oPlayer.y - 170)/(185-170),0),0);
	//}
	if (irandom_range(0,probabilityFuel) == 0) and (timerFuel < 0) {
		timerFuel = irandom_range(delayMinFuel, delayMaxFuel);
		SpawnFuelTank();
	}
	timerFuel --;

	if (irandom_range(0,probabilityNitro) == 0) and (timerNitro < 0) {
		timerNitro = irandom_range(delayMinNitro, delayMaxNitro);
		SpawnNitro();
	}
	timerNitro --;
	
	if (irandom_range(0,probabilityR) == 0) and (timerR < 0) {
		timerR = irandom_range(delayMinR, delayMaxR);
		PlayR();
	}
	timerR --;



	layer_y("Sky", -skyTimer * skySpeed);
	layer_y("Sky2", -skyTimer * skySpeed);
	skyTimer ++;
	var value = skyTimer * skySpeed % 4999;
	if (value > 1200) and (value < 3420) {
		highClouds = 1;
	} else highClouds = 0;
	if highClouds {
		layer_y("Clouds", Approach(layer_get_y("Clouds"),cloudsHeightHigh,cloudsSpd));
		oStars.image_alpha = Approach(oStars.image_alpha,1,cloudsSpd/100);
		
	} else {
		layer_y("Clouds", Approach(layer_get_y("Clouds"),cloudsHeightLow,cloudsSpd));
		oStars.image_alpha = Approach(oStars.image_alpha,0,cloudsSpd/100);
	}



	if (instance_exists(oPlane) or instance_exists(oSubmarine)) {
		oPlayer.hAnchor = oPlayer.hAttack;
		audio_sound_gain(MUSICAfight, 0.8,1000*0.5);
	} else {
		oPlayer.hAnchor = oPlayer.hNeutral;
		audio_sound_gain(MUSICAfight, 0,1000*5);
	}

	// Move background
	global.x += oPlayer.spd;
	layer_x("Clouds", global.x/90);

	// Firing delay
	firing--;
}