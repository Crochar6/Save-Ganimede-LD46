if (state = 0) {
	if (timer < 0) {
		state = 1;
		repeat (irandom_range(40,60)) {
			instance_create_layer(x+irandom_range(-2,2),y+irandom_range(-2,2),"Particles",oParticleSmokePuff1);
		}
	}
	hsp = oPlayer.spd*0.7;
	vsp += grv;
	timer--;
} else {
	hsp += acc;
	vsp = rnd;
	instance_create_layer(x,y,"Particles",oParticleMissile);
}
x += hsp;
y += vsp;
if (place_meeting(x,y,oPlayer)) {
	with (oPlayer) Death();
	Explode();
	instance_destroy();
}
if (place_meeting(x,y,pDeath)) {
	Explode(); 
	instance_destroy();
}
if (x > room_width + 50) instance_destroy();
if (x < -16) instance_destroy();