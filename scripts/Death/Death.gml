with (oPlayer) visible = false; control = false;
with (oReflection) visible = false;
for (var i = 0; i < 8; i++) {
	with (instance_create_layer(x,y,"Particles",oParticleDeath)) {
		image_index = i;
	}
}
Explode();
