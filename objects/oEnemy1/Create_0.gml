/// @description Insert description here
// You can write your code in this editor

hp = 2;
flash = 0;
path = pPath1;
//pathbegin = path;
firerate = random_range(60,180);
alarm[0] = firerate;

if (instance_exists(oController1)) {
	path_start(oController1.path,5,path_action_stop,false);
} else {
	path_start(path,5,path_action_stop,false);
}
