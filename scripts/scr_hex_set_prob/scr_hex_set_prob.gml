/// @function scr_hex_set_prob(qrKey, prob, domain, domain_type)
/// @description Given given a qrKey, a probability(1 = 100%) and a domain_type, set that domain type to eqaul prob, deacesring all other domain types under that same domain equally
/// @param {Int} Qrkey
/// @param {Number} Probablility, (1 = 100%)
/// @param {hex.terrain_prob | hex.building_prob}
/// @param {enum.terrain | enum.building}

var qrKey = argument0;
var prob_percent = argument1;
var domain = argument2;
var domain_type = argument3;

var hex_ref = global.hex_data[? qrKey];
var current_prob_int = hex_ref[@ domain, domain_type];
var target_prob_int = global.max_int*prob_percent;
var delta_prob_int = target_prob_int - current_prob_int;
var delta_prob_perc = delta_prob_int/global.max_int;
var current_prob_perc = current_prob_int/global.max_int;
var remainder_old_prob_perc = 1 - current_prob_perc;

var multiple = 1-(delta_prob_perc/remainder_old_prob_perc);
/* show_debug_message("multiple: " + string(multiple)); */

var domain_type_count = domain == hex.terrain_prob ? global.enum_terrain_length : global.enum_building_length;
/* show_debug_message(hex_ref); */
/* var debug_sum = 0; */
for(var i = 0; i < domain_type_count; i++){
  //if not the new set prob
  if(i != domain_type){
    base = hex_ref[domain, i] *multiple;
    hex_ref[@ domain, i] = base;
    /* debug_sum += base; */
  }else{
    hex_ref[@ domain, i] = target_prob_int;
    /* debug_sum += target_prob_int; */
  }
}
/* show_debug_message(debug_sum);
show_debug_message(global.max_int); */

/*
alchile ya nose que hize, pero jala. Encontre un numero/porcentaje con el cual
puedo multiplcar todas mis probabilidades para que decrescan de forma equitativa
conservando su relacion porcentil (ej. se decrementa mas algo que vale 50% a
algo que vale 10%). Asimismo no se usa una multiplicaccion para nuestro numero
'target', ya que si este es 0, nunca podria incrementar.
*/
