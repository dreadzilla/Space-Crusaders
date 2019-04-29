/// @description Shoot enemy

with (other) {
	if (hp <= 0) {
		instance_destroy();
	} else {
		hp--;
		flash = 3;
		//hitfrom = other.direction;
		x = xprevious;
	}
}
audio_play_sound(aHithurt,1,0);
instance_destroy();
