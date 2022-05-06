if (timerE1 <= 0) {
	if (irandom_range(0, 4) == 0) {
		timerE1 = 60*20;
	} else {
		timerE1 = irandom_range(delayMinE1, delayMaxE1);
		instance_create_layer(-110, irandom_range(WATER_Y - 16, 16),"Instances",oPlane);
	}
}
timerE1 --;
