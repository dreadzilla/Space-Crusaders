/// @description Initialize Player Variables

max_spd = 6;
xspd = 0;
yspd = 0;
acc = 1; // Acceleration
hascontrol = true;
flash = 0;


fire_delay = 0;

enum player {
	moving,
	noop,
	hurt,
	death,
	won
}

state = player.moving;

// Weapon states
weaponcurrent = 1;
weaponmax = 4;