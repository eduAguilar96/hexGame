/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(ord("G"))){
	global.debugging_grid = !global.debugging_grid
}

if (global.debugging_grid){
	with (obj_hex){
		priv_hex_set_xy(self);
	}
	if (keyboard_check(vk_space)){
		if (keyboard_check(vk_up)){
			global.q_y = global.q_y -debug_grid_chg;
		}
		if (keyboard_check(vk_down)){
			global.q_y = global.q_y +debug_grid_chg;
		}
		if (keyboard_check(vk_right)){
			global.q_x = global.q_x +debug_grid_chg;
		}
		if (keyboard_check(vk_left)){
			global.q_x = global.q_x -debug_grid_chg;
		}
	}else{
		if (keyboard_check(vk_up)){
			global.r_y = global.r_y +debug_grid_chg;
		}
		if (keyboard_check(vk_down)){
			global.r_y = global.r_y -debug_grid_chg;
		}
		if (keyboard_check(vk_right)){
			global.r_x = global.r_x -debug_grid_chg;
		}
		if (keyboard_check(vk_left)){
			global.r_x = global.r_x +debug_grid_chg;
		}
	}
	if (keyboard_check_pressed(vk_shift)){
	   show_debug_message("qx="+string_format(global.q_x,2,10));
	   show_debug_message("qy="+string_format(global.q_y,2,10));
	   show_debug_message("rx="+string_format(global.r_x,2,10));
	   show_debug_message("ry="+string_format(global.r_y,2,10));
	}
}

if(keyboard_check_pressed(vk_escape)){
	game_end();
}
