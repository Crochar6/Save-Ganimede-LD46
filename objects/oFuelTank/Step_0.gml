
y += vsp;

x += hsp * (-oPlayer.spd);

if (y > WATER_Y+1) {
	sprite_index = sFuelTank;
	vsp = 0;
}

if (x < -50) instance_destroy();
if (place_meeting(x,y,pDeath)) {
	sprite_index = sFuelTank;
	vsp = 0;
} else {
	vsp = 0.3;
	sprite_index = sFuel;
}