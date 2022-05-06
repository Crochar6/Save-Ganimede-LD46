
if (timerBack <= 0) {
	timerBack = irandom_range(delayMinBack, delayMaxBack);
	if (irandom_range(0, 4) == 0) {
		timerBack = 60*2;
	} else {
		instance_create_layer(496, WATER_Y, "Back1", oRocksBack);
	}
}
timerBack --;