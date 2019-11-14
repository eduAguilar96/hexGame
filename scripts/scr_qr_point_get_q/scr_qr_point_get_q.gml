/// @function scr_qr_point_get_q(key)
/// @description Given an merge qrKey, extract the q int
/// @param {int} qrKey

var qrh = argument0;
var q = qrh >> QR_POINT_USED_BITS;
return priv_sign_bit_extension(q, QR_POINT_USED_BITS);