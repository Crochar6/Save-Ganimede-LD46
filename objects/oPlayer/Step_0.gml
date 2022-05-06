// Player input
keyUp = keyboard_check(ord("W")) or keyboard_check(vk_up) or keyboard_check(vk_space);
keyLeft = keyboard_check(ord("A")) or keyboard_check(vk_left);
keyDown = keyboard_check(ord("S")) or keyboard_check(vk_down);
keyRight = keyboard_check(ord("D")) or keyboard_check(vk_right);

if ( global.x < -16*6) and (global.firstTime) {
	global.firstTime = 0;
	oTutorial2.timer = 60*8;
}
if (control) {
	if (keyDown) and (fireTimer < 0){
		fireTimer = fireMax;
		instance_create_layer(x,y,"Instances",oBomb);
	}
	fireTimer--;
	
	if (nitro > 0){
		spd = spdNitro;
		if (irandom_range(0,nitroProbability) == 0) {
			instance_create_layer(x,y,"Particles",oParticleNitro);
		}
	} else{
		spd = Approach(spd,spdNeutral,0.014);
	}
	nitro --;
	
	//Actualize speeds
	if (vsp > 0) {
		vsp += grvHold;
	} else vsp += grv;

	if (keyUp) and (fuel > 0) {
		vsp += vAcc;
		helix = helixSpeedHard;
	
		fuel = max(fuel - fuelRate, 0);
		if (fuel > fuelMax) {
			fuel = fuelMax;
		}
	
		if (irandom_range(0,smokeProbability2) == 0) {
			instance_create_layer(x+10,y+(vsp*1.3),"Particles",oParticleFire);
		}
	} else {
		helix = helixSpeed;
	}
	if (fuel < 0) {
		instance_create_layer(x+10,y+(vsp*1.3),"Particles",oParticleFire);
		instance_create_layer(x,y,"Particles",oParticleFire);
	}
	vsp = clamp(vsp, vspMaxUp, vspMaxDown);

	//var dir = keyRight - keyLeft;
	//if (dir != 0) {
	//	hsp += hAcc * dir;
	//} else {
	//	Approach(hsp, x - hAnchor, fric);
	//}
	//hsp = clamp(hsp, -hspMax, hspMax);
	hsp = (hAnchor - x)/80;


	// Move vertically (plane)
	y += vsp;

	x += hsp;

	// Tremble
	if (irandom_range(0,10) == 0) {
		extraX = irandom_range(-1,1);
	} else if (choose(0,1,2) == 0) extraX = 0;
	if (irandom_range(0,10) == 0) {
		extraY = irandom_range(-1,1);
	} else if (choose(0,1) == 0) extraY = 0;


	// Angle
	angle = radtodeg(arctan(vsp/spd))/10;

	// Collision
	if (place_meeting(x, y, pDeath)) {
		Death();
	}

	// Create Particles
	if (irandom_range(0,smokeProbability) == 0) {
		instance_create_layer(x+10,y+(vsp*1.3),"Particles",oParticleSmoke);
	}
	if (irandom_range(0,smokeProbability2) == 0) {
		instance_create_layer(x-10,y-(vsp*1.3),"Particles",oParticleSmoke);
	}
	if (irandom_range(0,smokeProbabilityPuff) == 0){
		repeat (irandom_range(20,40)) {
			instance_create_layer(x+10+irandom_range(-2,2),y+(vsp*1.3)+irandom_range(-2,2),"Particles",oParticleSmokePuff);
		}
		extraX = choose(-1,1,2);
		extraY = choose(-1,1,2);
	}

	//Animate helix
	sprite_index = HelixSprite(round(global.x/helix) % 8);

	// Animate angle
	image_index = -(angle + 3);
}
// Vignette
oVignette.imageGoTo = (fuelMax - fuel)/fuelMax;

if (visible == false) {
	deathTimer--;
	oBlack.image_alpha = 1 - (deathTimer/60*3);
	if (deathTimer < 0) {
		Setup();
		room_restart();
	}
}