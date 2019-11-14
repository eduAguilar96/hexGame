var val  = argument0;
var size = argument1; 
if (((1 << (size - 1)) & val) > 0) {
    return (val | (-1 << (size - 1)));
} else {
    return val;
}