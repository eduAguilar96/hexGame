/// @function func_hexh_to_pixel_cmplx(q,r,hex_height, q_x, q_y, r_x, r_y)
/// @description Given qr coordenates, hex height and qr vectors' components, calculate position of hex in pixels
/// @param {int} q coordenate from axial grid
/// @param {int} r coordenate from axial grid
/// @param {int} height in pixels of hex (distance from vertex to vertex)
/// @param {real} q_x, q basis vector x component
/// @param {real} q_y, q basis vector y component
/// @param {real} r_x, r basis vector x component
/// @param {real} r_y, r basis vector y component

var q = argument0;
var r = argument1;
var hex_size = argument2/2;
var q_x = argument3;
var q_y = argument4;
var r_x = argument5;
var r_y = argument6;

var pos_x = hex_size * ((q_x *  q) + (r_x * r));
var pos_y = hex_size * ((q_y * q) + (r_y * r));

var point = [pos_x,pos_y];
return point;
