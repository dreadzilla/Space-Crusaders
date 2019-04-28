/// @description Draw hit flash if hit

draw_self();
if (flash > 0)
{
	flash--;
	image_blend = make_color_rgb(250,120,120);
	draw_self();
	image_blend = make_color_rgb(255,255,255);
}