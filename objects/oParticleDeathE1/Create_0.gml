hsp = oPlayer.spd/0.7 + irandom_range(1,5.3);
vsp = random_range(-4, -0.5);
image_alpha = 0.9;
aAcc = random_range(0.003,0.002);
x += choose(-1,0,1,2);
y += choose(-2, -3, -1);
grv = 0.12;

if (irandom_range(0,1) == 0) instance_create_layer(x,y,"Particles",oParticleSmoke);