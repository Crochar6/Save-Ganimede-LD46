image_speed = 0;
spriteNum = image_number;
pos = irandom_range(-1, 2);
y += pos;
hsp = -0.6 + pos*(-0.02);


while (oGame.lastObstacleSprite == image_index) {
	image_index = irandom_range(0, spriteNum-1);
}
oGame.lastObstacleSprite = image_index;
mask_index = sRocksObstacleHB;