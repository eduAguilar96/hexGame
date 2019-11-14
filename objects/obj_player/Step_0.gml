/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D")) && keyboard_check_pressed(ord("W"))){
	s_direction = 45;
}else if(keyboard_check(ord("D"))){
	s_direction = 0;
}else if(keyboard_check(ord("W")) && keyboard_check_pressed(ord("A"))){
	s_direction = 135;
}else if(keyboard_check(ord("W"))){
	s_direction = 90;
}else if(keyboard_check(ord("A")) && keyboard_check_pressed(ord("S"))){
	s_direction = 225;
}else if(keyboard_check(ord("A"))){
	s_direction = 180;
}else if(keyboard_check(ord("S")) && keyboard_check_pressed(ord("D"))){
	s_direction = 315;
}else if(keyboard_check(ord("S"))){
	s_direction = 270;
}

//increment position
if(scr_detect_movement_input()){
	x += iso_speed * cos(s_direction*(pi/180));
	y -= iso_speed * (sin(s_direction*(pi/180))/2);
}
