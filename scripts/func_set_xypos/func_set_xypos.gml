/// @function Set x and y position of instance
/// @description Given an instance and a point with point.x and point.y, move it to its corresponding x and y
/// @param inst Reference to instance
/// @param pos_xy Array with point.x and point.y
/// @param pos_org Array with point.x and point.y

var inst = argument0;
var pos_xy = argument1;
var origin = argument2;

inst.x = round(pos_xy[point.x] + origin[point.x]);
inst.y = round(pos_xy[point.y] + origin[point.y]);