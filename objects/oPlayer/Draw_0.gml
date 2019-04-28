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
	
		var particle = instance_create_layer(x + random_x, y + random_y, "Bullets", oParticle);
		particle.image_blend = c_white;
		particle.image_speed = .5;
		//particle.image_xscale += 1;
	    //particle.image_yscale += 1;
		particle.gravity = 0;
		particle.speed = 2;
	}
}

if (state == player.death) {	
	draw_set_halign(fa_center);
	draw_set_font(fTitle);
	draw_text_color(room_width/2 + 1, (room_height/3) + 1, "You Lost!", c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, (room_height/3), "You Lost!", c_white, c_white, c_white, c_white, 1);	
	
	curtime = string(alarm[0] div room_speed);
	
	draw_set_font(fStart);
	draw_text_color(room_width/2 + 1, room_height - (room_height/2) + 1, "Restarting in " + curtime, c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, room_height - (room_height/2), "Restarting in " + curtime, c_white, c_white, c_white, c_white, 1);
}

if (state == player.won) {	
	draw_set_halign(fa_center);
	draw_set_font(fTitle);
	draw_text_color(room_width/2 + 1, (room_height/3) + 1, "You WON!", c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, (room_height/3), "You WON!", c_white, c_white, c_white, c_white, 1);	
	
	draw_set_font(fStart);
	draw_text_color(room_width/2 + 1, room_height - (room_height/2) + 1, "To restart press R", c_black, c_black, c_black, c_black, 1);
	draw_text_color(room_width/2, room_height - (room_height/2), "To restart press R", c_white, c_white, c_white, c_white, 1);
}