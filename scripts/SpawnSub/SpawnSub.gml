if (timerSub <= 0) and (!submarine) {
	if (irandom_range(0, 3) == 0) {
		timerSub = 60*20;
	} else {
		timerSub = irandom_range(delayMinSub, delayMaxSub);
		instance_create_layer(-110, irandom_range(WATER_Y - 16, 16),"Instances",oSubmarine);
		submarine = 1;
	}
}
timerSub --;
