image_speed = random_range(0.8,1.6);
image_alpha = 0.5;
aAcc = random_range(0.003,0.01);
hsp = oPlayer.spd/random_range(0.8,1.1);
vsp = random_range(0.2, -0.1);
x += choose(-2,-1,0);
y += choose(-1,0);
if (irandom_range(0,1) == 0) instance_create_layer(x,y,"Particles",oParticleFire);