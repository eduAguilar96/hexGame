/// @function scr_qr_point_get_diagonal_n(qrKey, nbr, dist)
/// @description Given a qrKey, an index dir(0-5) and a distance, get qrKey of diagonal.
/// @param {real} qrKey
/// @param {int} index 0-5 idicating neighbor. 0 = right:up diagonal, following clockwise
/// @param {int} distance from center

var q = scr_qr_point_get_q(argument0);
var r = scr_qr_point_get_r(argument0);
var index = argument1;
var dist = argument2

switch(index){
  case 0:
    q += 2*dist;
    r += -1*dist;
    break;
  case 1:
    q += 1*dist;
    r += 1*dist;
    break;
  case 2:
    q += -1*dist;
    r += 2*dist;
    break;
  case 3:
    q += -2*dist;
    r += 1*dist;
    break;
  case 4:
    q += -1*dist;
    r += -1*dist;
    break;
  case 5:
    q += 1*dist;
    r += -2*dist;
    break;
}

return scr_qr_point(q,r);
