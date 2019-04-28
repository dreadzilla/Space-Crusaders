var _startx = argument0;
var _starty = argument1;
var _enemy = argument2;

instance_create_layer(_startx,_starty,"Enemies",_enemy);
show_debug_message("spawnenemy");

//_controller.start = false;