sprite_index = GetNumber(index);
image_speed = 0;
state = 0;

if (n == 0){
	SFX(sfxCounter0,0.2);
} else {
	SFX(sfxCounter1,0.7+n*0.075);
}
