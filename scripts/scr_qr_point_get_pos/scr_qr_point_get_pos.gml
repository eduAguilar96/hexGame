/// @function scr_qr_point_get_pos(qrKey)
/// @description Given a qrKey, get its position in pixels(x,y)
/// @param {real} qrKey

var q = scr_qr_point_get_q(argument0);
var r = scr_qr_point_get_r(argument0);
var hex_size = global.hex_height/2;
var q_x = global.q_x;
var q_y = global.q_y;
var r_x = global.r_x;
var r_y = global.r_y;
var room_center_x = room_width/2;
var room_center_y = room_height/2;

var pos_x = hex_size * ((q_x *  q) + (r_x * r));
var pos_y = hex_size * ((q_y * q) + (r_y * r));

var point = [pos_x,pos_y];
return point;
