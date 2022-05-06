x = oPlayer.x;
y = (186 - oPlayer.y)/5 + 193;
image_alpha = min(0.4,(sin(global.x / 30)+1) * 0.02 + 0.1 + min(0.6,(4/(189 - oPlayer.y)-0.1)));
image_yscale = -0.24;

