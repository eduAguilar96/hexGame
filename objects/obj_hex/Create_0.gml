/// @description Insert description here
// You can write your code in this editor

//persistent
origin = [0,0];

//Axial coordenates (q,r)
pos_q = 0;
pos_r = 0;
qrKey = 0;

//Draw variables
inst_terrain_type = terrain.grass;
inst_building_type = building.na;
debug_terrain_type = global.terrain_name[inst_terrain_type];
debug_building_type = global.building_name[inst_building_type];

priv_hex_set_xy(self);
