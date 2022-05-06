// Movement
AIenemy();
if oPlayer.visible == false hAnchor = -50;

//Actualize speeds
if (vsp > 0) {
	vsp += grvHold;
} else vsp += grv;

if (keyUp) {
	vsp += vAcc;
	
	
	if (irandom_range(0,smokeProbability2) == 0) {
		instance_create_layer(x+10,y+(vsp*1.3),"Particles",oParticleFire);
	}
}

vsp = clamp(vsp, vspMaxUp, vspMaxDown);

var anchor = hAnchor;
if (oPlayer.nitro > 0) {
	anchor = -90;
}
hsp = ((anchor) - x)/50;



// Move vertically (plane)
y += vsp;

x += hsp;



// Angle
angle = radtodeg(arctan(vsp/oPlayer.spd))/8 ;

// Collision
if (place_meeting(x, y, pDeath) and (x > 0)) {
	DeathE1();
}

// Create Particles
if (irandom_range(0,smokeProbability) == 0) {
	instance_create_layer(x+10,y+(vsp*1.3),"Particles",oParticleSmoke);
}
if (irandom_range(0,smokeProbability2) == 0) {
	instance_create_layer(x-10,y-(vsp*1.3),"Particles",oParticleSmoke);
}


// Animate angle
image_index = -(angle + 3);

