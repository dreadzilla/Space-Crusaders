/// @description Draw hit flash if hit

draw_self();
if (flash > 0)
{
	flash--;
	image_blend = make_color_rgb(250,120,120);
	draw_self();
	image_blend = make_color_rgb(255,255,255);
	show_debug_message("flash");
	
	repeat (irandom_range(9,15)) {
		var random_x = irandom_range(-8,8);
		var random_y = irandom_range(-8,8);
	
		var particle = instance_create_layer(x + random_x, y + random_y, "Player", oParticle);
		particle.image_blend = c_white;
		particle.image_speed = .5;
		//particle.image_xscale += 1;
	    //particle.image_yscale += 1;
		particle.gravity = 0;
		particle.speed = 2;
	}
}