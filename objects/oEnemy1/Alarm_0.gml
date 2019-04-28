/// @description Shoot stuff
var _player = instance_find(oPlayer,0);
if (_player == noone) exit;
//var _distance = point_distance(x, y, _player.x, _player.y);
var _direction = point_direction(x, y, _player.x, _player.y);

var _fireit = choose(true, false, false);
show_debug_message("alarm" + string(_fireit));
if (_fireit) {
	var _laser = instance_create_layer(x,y,"Enemies", oEnemyshot);
	_laser.speed = 3;
	//_laser.image_angle = _direction;
	_laser.direction = _direction;
}
alarm[0] = firerate;
