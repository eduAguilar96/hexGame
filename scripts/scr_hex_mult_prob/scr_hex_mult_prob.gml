/// @function scr_hex_mult_prob(qrKey, mult, domain, domain_type)
/// @description Given given a qrKey, a probability(1 = 100%) and a domain_type, multiply the given domain_type by the mult, deacesring all other domain types under that same domain equally
/// @param {Int} Qrkey
/// @param {Number} multiple
/// @param {hex.terrain_prob | hex.building_prob}
/// @param {enum.terrain | enum.building}

var qrKey = argument0;
var multiple = argument1;
var domain = argument2;
var domain_type = argument3;

var hex_ref = global.hex_data[? qrKey];
var current_prob_int = hex_ref[domain, domain_type];
var target_prob_int = current_prob_int*multiple;
target_prob_int = target_prob_int > global.max_int ? global.max_int : target_prob_int;
target_prob_int = target_prob_int < 0 ? 0 : target_prob_int;

var target_prob_perc = target_prob_int/global.max_int;

scr_hex_set_prob(qrKey, target_prob_perc, domain, domain_type);
