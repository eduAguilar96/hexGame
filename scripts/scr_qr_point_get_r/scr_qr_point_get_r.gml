/// @function scr_qr_point_get_r(key)
/// @description Given an merge qrKey, extract the r int
/// @param {int} qrKey

var qrh = argument0;
var r = qrh & ((1 << QR_POINT_USED_BITS) - 1);
return priv_sign_bit_extension(r, QR_POINT_USED_BITS);