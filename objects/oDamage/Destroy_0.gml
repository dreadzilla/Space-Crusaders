/// @description Insert description here
// You can write your code in this editor


if (dropship) {
	with (instance_create_layer(x,y-16,"Player",oPowerup)) {
		speed = 1;
		direction = 270;
		//image_angle = direction;
		audio_play_sound(aShot,1,0);
	}
	dropship = false;
}