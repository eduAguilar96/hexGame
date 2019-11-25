/// @function scr_dec_2_hexa(decimal_num)
/// @description Given a single decimal number, convert it into its hexadecimal equivalent in array form
/// @param {Number} decimal_num

// 16777215 = ffffff

var hex_string_rev = ["0", "0", "0", "0", "0", "0"];
var hex_i = 0;
var decimal_num = argument0;
while (decimal_num > 0){
	//show_debug_message("decimal_num : "+string(decimal_num));
	var remainder = decimal_num % 16;
	//show_debug_message("remainder : "+string(remainder));
	if( remainder < 10){
		hex_string_rev[hex_i] = chr(48+remainder); 
	}else{
		hex_string_rev[hex_i] = chr(55+remainder); 
	}
	//show_debug_message("hex char : " + hex_string_rev[hex_i]);
	decimal_num = floor(decimal_num/16);
	hex_i++;
}

var hex_string = ["0", "0", "0", "0", "0", "0"];
for(var i = 5; i >= 0; i--){
	hex_string[i] = hex_string_rev[5-i];
}

return hex_string;

