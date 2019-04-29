/// @description Player hit enemy

with (other) {
	flash = 3;
	oPlayerStats.hp--; // Put back later
	state = player.hurt;
	//hitfrom = other.direction;
	x = xprevious;	
	audio_play_sound(aHithurt,1,0);
}
