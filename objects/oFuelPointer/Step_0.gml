image_index = ceil((oPlayer.fuel / oPlayer.fuelMax) * image_number-1);
image_index = clamp(image_index,0,image_number-1);

if (image_index != prevImage) and (image_index %2 == 0) {
	SFX(sfxFuelTick,0.4);
}

prevImage = image_index;