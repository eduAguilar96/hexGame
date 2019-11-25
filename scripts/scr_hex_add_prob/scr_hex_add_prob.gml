/// @function scr_hex_add_prob(qrKey, prob, domain, domain_type)
/// @description Given given a qrKey, a probability(1 = 100%) and a domain_type, add to that domain type the argument prob, deacesring all other domain types under that same domain equally
/// @param {Int} Qrkey
/// @param {Number} Probablility, (1 = 100%)
/// @param {hex.terrain_prob | hex.building_prob}
/// @param {enum.terrain | enum.building}

var qrKey = argument0;
var prob_percent = argument1;
var domain = argument2;
var domain_type = argument3;

var hex = global.hex_data[? qrKey];
var current_prob_int = hex[@ domain, domain_type];
var current_prob_perc = current_prob_int/global.max_int;
var target_prob_perc = current_prob_perc+prob_percent;
target_prob_perc = target_prob_perc >= 1 ? 1 : target_prob_perc;

scr_hex_set_prob(qrKey, target_prob_perc, domain, domain_type);
