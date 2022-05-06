y += vsp;
x+= hsp;
vsp += acc;
if (y > WATER_Y+5) instance_destroy();

if (place_meeting(x,y,oPlayer) or (place_meeting(x,y,pDeath))) {
	instance_destroy();
}