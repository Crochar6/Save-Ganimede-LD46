x += hsp;
y += vsp;
vsp += grv;
hsp = Approach(hsp,-0.7,fric);
image_alpha -= 0.01;
if (y > WATER_Y +10) instance_destroy();