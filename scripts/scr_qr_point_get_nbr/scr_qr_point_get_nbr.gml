/// @function scr_qr_point_get_nbr(qrKey, nbr)
/// @description Given a qrKey and an index(0-5) get qrKey of neighbor.
/// @param {real} qrKey
/// @param {int} index 0-5 indicating direction. 0 = right neighbor, following clockwise

var q = scr_qr_point_get_q(argument0);
var r = scr_qr_point_get_r(argument0);
var index = argument1;

switch(index){
  case 0:
    q += 1;
    r += 0;
    break;
  case 1:
    q += 0;
    r += 1;
    break;
  case 2:
    q += -1;
    r += 1;
    break;
  case 3:
    q += -1;
    r += 0;
    break;
  case 4:
    q += 0;
    r += -1;
    break;
  case 5:
    q += 1;
    r += -1;
    break;
}

return scr_qr_point(q,r);
