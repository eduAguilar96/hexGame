/// @function scr_qr_point(q,r)
/// @description Given two seperate q and r points, merge them into a single 32 bit int.
/// @param {int} q coordenate 
/// @param {int} r coordenate

var q = argument0 & ((1 << QR_POINT_USED_BITS) - 1);
var r = argument1 & ((1 << QR_POINT_USED_BITS) - 1);
return (q << QR_POINT_USED_BITS) + r;