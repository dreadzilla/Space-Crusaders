/// @description Fade out
y -= flowspeed;
image_alpha-=decreasealpha;

if (image_alpha <= 0) {
	instance_destroy();	
}