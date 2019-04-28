/// @description Insert description here
// You can write your code in this editor

switch (currentWave) {
	
	case(4):
		if (start) { // Wave right small
			path = pPath11;
			startx = room_width;
			starty = 0;
			timeline_index = tLvl1Wave1;
			timeline_running = true;
			start = false;
		}
	break;
	
	case(3):
		if (start) { //Wave left small
			path = pPath1;
			startx = 0;
			starty = 0;
			timeline_index = tLvl1Wave1;
			timeline_running = true;
			start = false;
		}
	break;
	
	case(2):
		if (start) { // Wave left circle
			path = pPath2;
			startx = 0;
			starty = 50;
			timeline_index = tLvl1Wave2;
			timeline_running = true;
		}
	break;

	case(1):
		if (start) { // Wave right circle
			path = pPath21;
			startx = room_width;
			starty = 50;
			timeline_index = tLvl1Wave2;
			timeline_running = true;
		}
	break;
	
	case(0): // Boss time!
		if (start) {
			startx = 0;
			starty = 0;
			instance_create_layer(startx,starty,"Enemies",oBoss);
			audio_play_sound(aNewwave,1,0);
			start = false;
		}
	break;
	
}