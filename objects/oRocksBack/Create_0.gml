image_speed = 0;
spriteNum = image_number;
pos = irandom_range(0, 0);
y += pos;
hsp = -0.4 + pos*(-0.02);


while (oGame.lastBackSprite == image_index) {
	image_index = irandom_range(0, spriteNum-1);
}
oGame.lastBackSprite = image_index;