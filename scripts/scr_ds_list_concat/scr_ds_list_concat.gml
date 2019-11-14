/// @function scr_ds_list_concat(listA, listB)
/// @description Given to ds_list, return one that combines both
/// @param {ds_list} listA
/// @param {ds_list} listB

var listA = argument0;
var listB = argument1;
for(var i = 0; i < ds_list_size(listB);i++;){
  ds_list_add(listA, listB[| i]);
}
return listA;
