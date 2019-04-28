/// @desc applyfriction(acceleration)
/// @arg acceleration How fast to slow down

var acc = argument0;
var horizontal = argument1;

//show_debug_message("applyfriction"+ string(xspd));
if (horizontal) {
	if (xspd != 0) {
		if (abs(xspd) - acc > 0) {
			xspd -= acc * image_xscale;
		}
		else {
			xspd = 0;
		}
	}
} else {
	if (yspd != 0) {
		if (abs(yspd) - acc > 0) {
			yspd -= acc * sign(yspd);
		}
		else {
			yspd = 0;
		}
	}
}