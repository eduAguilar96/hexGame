/// @function scr_qr_point_get_nbr(qrKey, nbr)
/// @description Given a qrKey, an index(0-5) direction, and a distance get qrKey of neighbor at distance.
/// @param {real} qrKey
/// @param {int} index 0-5 idicating neighbor. 0 = right neighbor, following clockwise
/// @param {int} distance from center

var q = scr_qr_point_get_q(argument0);
var r = scr_qr_point_get_r(argument0);
var index = argument1;
var dist = argument2;

switch(index){
  case 0:
    q += 1*dist;
    r += 0;
    break;
  case 1:
    q += 0;
    r += 1*dist;
    break;
  case 2:
    q += -1*dist;
    r += 1*dist;
    break;
  case 3:
    q += -1*dist;
    r += 0;
    break;
  case 4:
    q += 0;
    r += -1*dist;
    break;
  case 5:
    q += 1*dist;
    r += -1*dist;
    break;
}

return scr_qr_point(q,r);
