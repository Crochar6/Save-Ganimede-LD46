//keyUp = keyboard_check(ord("W")) or keyboard_check(vk_space);
//keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
//keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
//keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);

	
if ((oPlayer.y)-variation < y){
	key_up = 1;
	vsp += vAcc;
}


if (irandom_range(0,react) == 0) {
	hAnchor = RANDPLANE;
}

if (abs(oPlayer.y - y) < 42) and (reloaded < 0) and (oGame.firing <0){
	reloaded = reloadCD;
	instance_create_layer(x,y,"Instances",oMissile);
	oGame.firing = oGame.firingDelay;
}
reloaded --;