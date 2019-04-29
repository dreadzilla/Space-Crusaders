/// @description Insert description here
// You can write your code in this editor

hp = 2;
flash = 0;
path = pPath1;
pathspeed = 5;
firerate = random_range(30,120);
alarm[0] = firerate;

if (instance_exists(oController1)) {
	path_start(oController1.path,pathspeed,path_action_stop,false);
} else {
	path_start(path,pathspeed,path_action_stop,false);
}
