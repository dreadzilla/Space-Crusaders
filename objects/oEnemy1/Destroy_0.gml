/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (path_position < 1) { // No explosion if just removing due to pat
	oPlayerStats.playerscore += 100;
	i = instance_create_layer(x,y,"Bullets",oDamage);
	i.damage="100";
}