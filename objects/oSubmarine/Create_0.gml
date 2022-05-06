#macro RANDOM_POS irandom_range(50,175)
hp = 4;
hAnchor = RANDOM_POS;
x = hAnchor;
y = 201;
image_alpha = 1;
alive = 1;
timer = 60*2;
timerR = 0;
maxReload = 60*2.4;
reload = maxReload;

state = 0;

if (global.firstSub == 1){
	global.firstSub = 0;
	oTutorial1.timer = 60*8;
}