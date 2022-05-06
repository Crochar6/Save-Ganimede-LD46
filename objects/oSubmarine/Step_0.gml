if (state == 1){
	image_speed = 0;
	sprite_index = sSubmarineRev;
	image_index = 0;
	hsp = ((hAnchor) - x)/300;
	if (irandom_range(0,60*5)==0) {
		hAnchor = RANDOM_POS;
	}
	reload --;
	if (reload < 0) {
		instance_create_layer(x,y-12,"Instances",oMissile2);
		reload = maxReload;
	}
	x += hsp;

	if (hp <= 0) and (alive) {
		Explode();
		alive = 0;
		oGame.submarine = 0;
		state = 2;
	}
} else if (state == 0) {
	image_speed = 1;
	if (image_index > 19) and (timer > 0){
		timer --;
		image_speed = 0;
	
	}
} else if (state == 2) {
	sprite_index = sSubmarineRev;
	image_speed = 1;
	if (image_index > image_number -2) instance_destroy();
}
x += sin(timerR/45) /3;
timerR ++;
if oPlayer.visible == false hAnchor = -50;
if (oPlayer.nitro > 0) {
	hAnchor = -50;
}