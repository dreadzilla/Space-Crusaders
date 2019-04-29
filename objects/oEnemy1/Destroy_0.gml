/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (path_position < 1) { // No explosion if just removing due to path
	oPlayerStats.playerscore += 100;
	
	testscore = oPlayerStats.playerscore mod 500;
	i = instance_create_layer(x,y,"Bullets",oDamage);
	i.damage="100";
	
	if ((testscore) == 0) {
		show_debug_message("modulo:" + string(testscore));
		i.dropship = true; //choose(true, false); // 50% chance
	}
	audio_play_sound(aEnemyexplode,1,0);
}