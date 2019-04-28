/// @description Insert description here
// You can write your code in this editor

// Shoot some bullets
var _direction = 190;
repeat(10) {
	with (instance_create_layer(x+10,y+16,"Bullets",oEnemyshot)) {
		speed = 5;
		direction = _direction;
		_direction += 18; 
		//image_angle = direction;
		//audio_play_sound(aShot,1,0);
	}
}

alarm[0] = firerate;