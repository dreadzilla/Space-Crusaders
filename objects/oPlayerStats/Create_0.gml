/// @description Init vars
hp = 3;
max_hp = 5;
currency = 100 * max_hp;
playerscore = 0;

display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

//if (!audio_is_playing(aMusic)) {
//	audio_play_sound(aMusic, 10, true);
//}