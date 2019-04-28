/// @description Initialize Player Variables

max_spd = 6;
xspd = 0;
yspd = 0;
acc = 1; // Acceleration
hascontrol = true;

fire_delay = 0;

enum player {
	moving,
	noop,
	hurt,
	death
}

state = player.moving;

// Weapon states

enum weapon {
	first,
	second,
	third,
	fourth
}

wepstate = weapon.third;
