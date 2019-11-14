/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D"))){
	x_press = 1;
}else if(keyboard_check(ord("A"))){
	x_press = -1;
}else{
	x_press = 0;
}
if(keyboard_check(ord("W"))){
	y_press = 1;
}else if(keyboard_check(ord("S"))){
	y_press = -1;
}else{
	y_press = 0;
}

//increment position
if(scr_detect_movement_input()){
	s_direction = radtodeg(arctan2(y_press, x_press));
	x += iso_speed * cos(s_direction*(pi/180));
	y -= iso_speed * (sin(s_direction*(pi/180))/2);
}
