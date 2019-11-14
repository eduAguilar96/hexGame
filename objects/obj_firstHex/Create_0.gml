/// @description Insert description here

//set global values
scr_globals();
//instance variables
debug_grid_chg = 0.0001;
//local variables
var layer_id = layer_get_id("Instances");
// instance player
instance_create_layer(room_width/2, room_height/2,layer_id, obj_player);
//get virtual mirros hexes qr points
var axial_points = ds_list_create();
var mirror_map_center_hex = [
	0,
	priv_qr_point_get_mirror(0,0),
	priv_qr_point_get_mirror(0,1),
	priv_qr_point_get_mirror(0,2),
	priv_qr_point_get_mirror(0,3),
	priv_qr_point_get_mirror(0,4),
	priv_qr_point_get_mirror(0,5)
];
//get all rings of axial points from 1 to radius
ds_list_add(axial_points, 0);
for(var i = 1; i < global.map_radius; i++){
	var ring = scr_qr_point_get_ring(0, i);
	axial_points = scr_ds_list_concat(axial_points, ring);
}

//instance all hexes from axial_points list
var num_hexes_in_map = ds_list_size(axial_points);
//for every hex, spawn mirror world copies
for(var nbr_i = 0; nbr_i < array_length_1d(mirror_map_center_hex); nbr_i++){
	var aux_origin = scr_qr_point_get_pos(mirror_map_center_hex[nbr_i])
	var room_center_x = room_width/2;
	var room_center_y = room_height/2;
	aux_origin[point.x] += room_center_x;
	aux_origin[point.y] += room_center_y;
	for (var qr_i = 0; qr_i < num_hexes_in_map; qr_i++; ){
		var auxQrKey = axial_points[| qr_i];
		var inst = instance_create_layer(0,0,layer_id, obj_hex);
		with(inst){
			qrKey = auxQrKey;
			pos_q = scr_qr_point_get_q(auxQrKey);
			pos_r = scr_qr_point_get_r(auxQrKey);
			origin = aux_origin;
			priv_hex_set_xy(self);
			if(qrKey == 0){
				sprite_index = sprt_hex_iso21_grey_gblue;
			}
		}
	}
}
