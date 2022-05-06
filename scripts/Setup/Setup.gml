global.x = 0;

cloudsHeightHigh = -70;
cloudsHeightLow = 0;
cloudsSpd = 0.04;

highClouds = 0;
skyTimer = 0;
skySpeed = 0.3;

extraSpd = 0;
extraAcc = 0.0002;

probabilityNitro = 2;
delayMinNitro = 60*10;
delayMaxNitro = 60*30;
timerNitro = 60*30;

probabilityR = 0;
delayMinR = 60*16;
delayMaxR = 60*30;
timerR = 60*10;

submarine = 0;
timerSub = 60*60;
delayMinSub = 60*40;
delayMaxSub = 60*10;


timerE1 = 60*8;
delayMinE1 = 60*2;
delayMaxE1 = 60*25;
maxE1 = 3;

firing = 0;
firingDelay = 60*0.8;

lastBackSprite = 0;
timerBack = 0;
delayMinBack = 10;
delayMaxBack = 60*3;

lastObstacleSprite = 0;
timerRocks = 0;
delayMinRocks = 60*4.5;
delayMaxRocks = 60*9;

probabilityFuel = 1;
delayMinFuel = 60*7;
delayMaxFuel = 60*19;
timerFuel = irandom_range(delayMinFuel, delayMaxFuel);