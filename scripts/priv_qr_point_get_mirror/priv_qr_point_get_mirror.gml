/// @function priv_qr_point_get_mirror
/// @description Given a qrKey and a direction(0-5), get virtual qrKey of mirror
/// @param {real} qrKey
/// @param {int} index 0-5 indicating direction. 0 = right:up mirror, following clockwise

var qrKey = argument0;
var dir_nbr_map = [5,0,1,2,3,4];
var dir_diagonal = argument1;
var ans = scr_qr_point_get_nbr(scr_qr_point_get_diagonal_n(qrKey, dir_diagonal, global.map_radius-1), dir_nbr_map[dir_diagonal]);
/* show_debug_message(dir_diagonal);
show_debug_message(qrKey);
show_debug_message(ans); */
return ans;
