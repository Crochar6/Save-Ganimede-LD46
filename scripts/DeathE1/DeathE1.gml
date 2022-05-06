for (var i = 0; i < 8; i++) {
	with (instance_create_layer(x,y,"Particles",oParticleDeathE1)) {
		image_index = i;
	}
	instance_destroy();
}
Explode();
with (shadow) instance_destroy()