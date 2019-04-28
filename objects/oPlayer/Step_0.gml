/// @description Insert description here
// You can write your code in this editor

/// @description Controlling the player

if (hascontrol) {
#region Set up controls for the player
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	fire = keyboard_check(vk_space);
	up_release = keyboard_check_released(vk_space);
#endregion
}

#region State Machine
switch (state) {
#region Move State
	case player.moving:
	if (xspd == 0) {
		sprite_index = sPlayer_idle;
	}
	else {
		sprite_index = sPlayer_move;
	}
	
	//Change direction of sprite
	if (xspd != 0) {
		image_xscale = sign(xspd);
	}
	//Check for moving left or right
	if (right or left) {
		xspd += (right - left) * acc;
		xspd = clamp(xspd, -max_spd, max_spd);		
	} else {
		applyfriction(acc, true);
	}
	if (up or down) {
		yspd += (down - up) * acc;
		yspd = clamp(yspd, -max_spd, max_spd);
	} else {
		applyfriction(acc, false);
	}
	
	//if (place_meeting(x, y + yspd + 1, oSolid) and yspd > 0) {
	//	audio_play_sound(aStep, 6, false);
	//}
	
	move(oSolid);
	//x += xspd;
	//y += yspd;
	
	switch (wepstate) {
		case weapon.first:
			fire_delay -= 1;
			
			if (fire and fire_delay < 0) {
				fire_delay = 10;
				with (instance_create_layer(x,y-16,"Bullets",oBullet)) {
					speed = 10;
					direction = 90;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
			}
		
		break;
		case weapon.second:
			fire_delay -=1;
			if (fire and fire_delay < 0) {
				fire_delay = 10;
				with (instance_create_layer(x,y-16,"Bullets",oBullet2)) {
					speed = 10;
					direction = 90;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
			}
			
		break;
		
		case weapon.third:
			fire_delay -=1;
			if (fire and fire_delay < 0) {
				fire_delay = 10;
				with (instance_create_layer(x,y-16,"Bullets",oBullet3)) {
					speed = 10;
					direction = 90;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
			}
			
		break;
		
		case weapon.fourth:
			fire_delay -=1;
			if (fire and fire_delay < 0) {
				fire_delay = 10;
				with (instance_create_layer(x,y-16,"Bullets",oBullet2)) {
					speed = 10;
					direction = 90;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
				with (instance_create_layer(x-10,y-16,"Bullets",oBullet)) {
					speed = 10;
					direction = 105;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
				with (instance_create_layer(x+10,y-16,"Bullets",oBullet)) {
					speed = 10;
					direction = 75;
					//image_angle = direction;
					audio_play_sound(aShot,1,0);
				}
			}
			
		break;
	}
	
	
	break;
#endregion
}
#endregion
