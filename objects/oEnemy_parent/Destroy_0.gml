/// @description Explode it!

if (path_position < 1) { // No explosion if just removing due to path
	repeat (irandom_range(9,15)) {
		var random_x = irandom_range(-8,8);
		var random_y = irandom_range(-8,8);
	
		var particle = instance_create_layer(x + random_x, y + random_y, "Enemies", oParticle);
		particle.image_blend = c_orange;
		particle.image_speed = .5;
		//particle.image_xscale += 1;
	    //particle.image_yscale += 1;
		particle.gravity = 0;
		particle.speed = 2;
	}
}