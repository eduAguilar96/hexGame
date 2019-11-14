/// @function priv_hex_set_xy(inst)
/// @description Given the instance of a hex_obj calculate its x and y position from its instance variables and set it
/// @param {obj_hex} Reference to hex_obj

var inst = argument0;

var pos = func_hex_to_pixel_cmplx(inst.pos_q,inst.pos_r,global.hex_height,global.q_x,global.q_y,global.r_x,global.r_y);
func_set_xypos(inst, pos, inst.origin);