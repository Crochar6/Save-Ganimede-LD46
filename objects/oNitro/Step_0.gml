
y += vsp;

x += hsp * (-oPlayer.spd);


if (x < -50) instance_destroy();
if (y > WATER_Y + 32) instance_destroy();