/// @function  scr_hex_create()
/// @description Return an array of basic boilerplate data for hex data

var data = [];
data[hex.terrain_seed] = 0;
/* data[hex.terrain_prob] = []; */
data[hex.terrain_prob, terrain.na] = 0;
data[hex.terrain_prob, terrain.grass] = global.max_int*0.6;
data[hex.terrain_prob, terrain.forest] = global.max_int*0.2;
data[hex.terrain_prob, terrain.swamp] = global.max_int*0.05;
data[hex.terrain_prob, terrain.desert] = global.max_int*0.05;
data[hex.terrain_prob, terrain.mountain] = global.max_int*0.05;
data[hex.terrain_prob, terrain.water] = global.max_int*0.05;
data[hex.terrain_prob, terrain.empty] = 0;
data[hex.terrain_type] = terrain.na;
data[hex.building_seed] = 0;
data[hex.building_bool] = false;
/* data[hex.building_prob] = []; */
data[hex.building_prob, building.na] = global.max_int;
data[hex.building_prob, building.world_start] = 0;
data[hex.building_prob, building.world_exit] = 0;
data[hex.building_prob, building.town] = 0;
data[hex.building_prob, building.church] = 0;
data[hex.building_prob, building.dungeon] = 0;
data[hex.building_prob, building.fort] = 0;
data[hex.building_prob, building.mage_tower] = 0;
data[hex.building_prob, building.castle] = 0;
data[hex.building_prob, building.fountain] = 0;
data[hex.building_prob, building.altar] = 0;
data[hex.building_prob, building.monster_camp] = 0;
data[hex.building_type] = building.na;
data[hex.building_state] = building_state.ok;
data[hex.discovered] = false;
data[hex.player_count] = 0;
data[hex.player0] = 0;
data[hex.player1] = 0;
data[hex.player2] = 0;
data[hex.player3] = 0;
//show_debug_message(data);
return data;
