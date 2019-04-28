/// @description Start game

if (keyboard_check_pressed(vk_space) and (room == rTitle)) {
	room_goto(rLevel1);
	//SlideTransition(trans_mode.intro,rOne);
}
