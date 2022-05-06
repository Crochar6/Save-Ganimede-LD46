
if (timerRocks <= 0) {
	timerRocks = irandom_range(delayMinRocks, delayMaxRocks);
	if (irandom_range(0, 2) == 0) {
		timerRocks = 60*2;
	} else {
		instance_create_layer(room_width + 16*8, WATER_Y + 16*3 -9 , "Back2", oRocksObstacle);
	}
}
timerRocks --;