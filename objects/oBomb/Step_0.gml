vsp += grv;
x+= hsp * (-oPlayer.spd);
y+= vsp;

if (y > WATER_Y + 7) image_alpha -= 0.1;
if (y > room_height+32) instance_destroy();