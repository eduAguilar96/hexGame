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
var room_center_x = room_width/2;
var room_center_y = room_height/2;
var room_center = [room_center_x, room_center_y];
var mirror_map_origin = [
	scr_xy_point_sum(scr_qr_point_get_pos(0),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,0)),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,1)),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,2)),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,3)),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,4)),room_center),
	scr_xy_point_sum(scr_qr_point_get_pos(priv_qr_point_get_mirror(0,5)),room_center)
];

//get all rings of axial points from 1 to radius
var axial_points = ds_list_create();
ds_list_add(axial_points, 0);
for(var i = 1; i < global.map_radius; i++){
	var ring = scr_qr_point_get_ring(0, i);
	axial_points = scr_ds_list_concat(axial_points, ring);
}

//instance all hexes from axial_points list
var num_hexes_in_map = ds_list_size(axial_points);
for (var qr_i = 0; qr_i < num_hexes_in_map; qr_i++; ){
	var auxQrKey = axial_points[| qr_i];
	var inst = instance_create_layer(0,0,layer_id, obj_hex);
	var hex_seed = ceil(random(1)*1000);

	show_debug_message("hex:"+string(auxQrKey)+", hex_seed :"+string(hex_seed));
	with(inst){
		qrKey = auxQrKey;
		pos_q = scr_qr_point_get_q(auxQrKey);
		pos_r = scr_qr_point_get_r(auxQrKey);
		origin = mirror_map_origin[0];
		priv_hex_set_xy(self);
		if(qrKey == 0){
			sprite_index = sprt_hex_iso21_grey_gblue;
		}
	}
}
