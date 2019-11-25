/// @function scr_srray_2_string(arr)
/// @description Given a 1 dimensional array of strings, convert into a single string
/// @param {Array} string array

// 16777215 = ffffff

var arr = argument0;
var str = "";
for(var i = 0; i < array_length_1d(arr); i++){
	str += arr[i];
}

return str;
