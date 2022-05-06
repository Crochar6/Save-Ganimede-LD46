#macro RANDPLANE irandom_range(30,135);
smokeProbability = irandom_range(5,50);
smokeProbability2 = irandom_range(5,40);

react = irandom_range(60*2,60*2.9);

variation = irandom_range(-30,58);

vsp = 0;
vspMaxDown = random_range(0.3,0.5);
vspMaxUp = -0.65;
vAcc = random_range(-0.05,-0.03);

hsp = 0;
hspMax = 1;
hAcc = 0.08;


fric = 0.08;

hAnchor = RANDPLANE;

grv = 0.027;
grvHold = 0.004;

keyUp = 0;
keyLeft = 0;
keyDown = 0;
keyRight = 0;

reloadCD = 60 * random_range(2,5);
reloaded = reloadCD;

angle = 0;

//Create shadow
shadow = noone;
with (instance_create_layer(x,y,"Instances",oReflection1)) {
	other.shadow = id;
	parent = other.id;
}