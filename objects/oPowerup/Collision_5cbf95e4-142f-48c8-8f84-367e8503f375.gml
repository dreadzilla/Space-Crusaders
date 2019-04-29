/// @description Increase health

if (instance_exists(oPlayerStats)) {
	oPlayerStats.hp++;
	if (oPlayerStats.hp > oPlayerStats.max_hp) oPlayerStats.hp = oPlayerStats.max_hp;
}
audio_play_sound(a1up,1,0);

instance_destroy();
