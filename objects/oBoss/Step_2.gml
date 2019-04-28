/// @description Insert description here
// You can write your code in this editor

if (((x > room_width/4) || (y > room_height/2)) && notonpath ) {
	path_start(path,3,path_action_restart,false);	
	notonpath = false
	//show_debug_message("Getting on path");
}