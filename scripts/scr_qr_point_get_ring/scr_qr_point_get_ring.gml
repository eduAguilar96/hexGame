/// @function scr_qr_point_get_ring
/// @description Given a qrKey/center and a radius, return list of points/qrKeys that are "distanced radius" of the center
/// @param {real} qrKey of center
/// @param {int != 0} radius, can't be 0

var qrKey = argument0;
var r = argument1;
var list = ds_list_create();

qrKey = scr_qr_point_get_nbr_n(qrKey, 4, r);
for(var i = 0; i < 6; i++;){
  for(var j = 0; j < r; j++;){
    ds_list_add(list, qrKey);
    qrKey = scr_qr_point_get_nbr(qrKey, i);
  }
}

return list;
