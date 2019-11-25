/// @function scr_dec_2_hexa(decimal_num)
/// @description Given a single decimal number, convert it into its hexadecimal equivalent in string form
/// @param {Number} decimal_num

// 16777215 = ffffff

var decimal_num = argument0;
return scr_array_2_string(scr_dec_2_hexa_array(decimal_num));