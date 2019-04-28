var _controller = argument0;
var _waitsecondsnextspawn = argument1;

_controller.start = false;
_controller.currentWave--;
show_debug_message("91");
alarm[0] = room_speed * _waitsecondsnextspawn; //Wait _waitsecondsnextspawn seconds

timeline_position = 0;
timeline_running = false;