spd += acc;
hsp = lengthdir_x(spd,angle);
vsp = lengthdir_y(spd,angle);
instance_create_layer(x,y,"Particles",oParticleMissile);
image_angle = angle;
x += hsp;
y += vsp;
if (place_meeting(x,y,oPlayer)) {
	with (oPlayer) Death();
	Explode();
	instance_destroy();
}
if (place_meeting(x,y,pDeath)) and (y<177) {
	Explode(); 
	instance_destroy();
}
if (y < -20) instance_destroy();