/// @description Insert description here
// You can write your code in this editor

switch (currentWave) {
	
	case(4):
		if (start) { // Wave right small
			pathdouble = true;
			path = pPath11;
			startx = room_width;
			starty = 0;
			timeline_index = tLvl1Wave1;
			timeline_running = true;
			
			//with (instance_create_layer(0, 0, "Enemies", oWorker)) {
			//	subject = other.id;
			//	path = pPath11;
			//	startx = room_width;
			//	starty = 0;
			//	timeline_index = tLvl1Wave1;
			//	timeline_running = true;
			//	timeline_position =  0;
			//}
			
			//with (instance_create_layer(0, 0, "Enemies", oWorker)) {
			//	subject = other.id;
			//	path = pPath1;
			//	startx = 0;
			//	starty = 0;
			//	timeline_index = tLvl1Wave1;
			//	timeline_running = true;
			//	timeline_position =  0;
			//}
			start = false;
		}
	break;
	
	case(3):
		if (start) { //Wave left small
			pathdouble = false;
			path = pPath1;
			startx = 0;
			starty = 0;
			timeline_index = tLvl1Wave1;
			timeline_running = true;
			
			//with (instance_create_layer(0, 0, "Enemies", oWorker)) {
			//	subject = other.id;
			//	path = pPath1;
			//	startx = 0;
			//	starty = 0;
			//	timeline_index = tLvl1Wave1;
			//	timeline_running = true;
			//	timeline_position =  0;
			//}
			start = false;
		}
	break;
	
	case(2):
		if (start) { // Wave left circle
			pathdouble = false;
			path = pPath2;
			startx = 0;
			starty = 50;
			timeline_index = tLvl1Wave2;
			timeline_running = true;
		}
	break;

	case(1):
		if (start) { // Wave right circle
			pathdouble = false;
			path = pPath21;
			startx = room_width;
			starty = 50;
			timeline_index = tLvl1Wave2;
			timeline_running = true;
		}
	break;
	
	case(0): // Boss time!
		if (start) {
			path = pPathboss;
			startx = 0;
			starty = 0;
			
		}
	break;
	
}