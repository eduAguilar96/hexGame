global.debugging_grid = false;
global.debugging_hex = true;
global.hex_height = sprite_get_width(object_get_sprite(obj_hex)); //distance from vertix to opp vertix
global.hex_initial_seed = 1276;

//Axial q and r Basis vectors' components
global.q_x = 1.6654; //stndr = aproxx 1.73
global.q_y = 0.1641; //stndr = aproxx 0
global.r_x = 0.3362; //stndr = aproxx 0.866
global.r_y = 0.8291; //stndr = aproxx 1.5

//hex world aspects
global.map_radius = 5;
global.hex_data = ds_map_create();
global.hex_qrKey = ds_list_create();

enum hex{
  terrain_seed, //int [0-10000], will determine terrain type
  terrain_prob = 1, // array [terrain]:int{0-10000}, all must sum to 10000, will determine terrain type
  terrain_type, // enum.terrain
  building_seed, // int [0-10000], will determine building type
  building_bool, // bool determine if ther is a building
  building_prob = 2, // array [building]:int{0-10000}, all must sum to 10000, will determine building type
  building_type, // enum.building
  building_state, // enum.building_state
  discovered, // bool determine if the hex can be seen
  player_count, // int number of players currently at the hex
  player0, // inst
  player1, // inst
  player2, // inst
  player3 //inst
}
enum terrain{
  na,
  grass,
  forest,
  swamp,
  desert,
  mountain,
  water
}
global.terrain_name = [];
global.terrain_name[terrain.na] = "Na";
global.terrain_name[terrain.grass] = "Grass";
global.terrain_name[terrain.forest] = "Forest";
global.terrain_name[terrain.swamp] = "Swamp";
global.terrain_name[terrain.desert] = "Desert";
global.terrain_name[terrain.mountain] = "Mountain";
global.terrain_name[terrain.water] = "Water";
enum building{
  na,
  world_start,
  world_exit,
  town,
  church,
  dungeon,
  fort,
  mage_tower,
  castle,
  fountain,
  altar,
  monster_camp
}
global.building_name = [];
global.building_name[building.na] = "Na";
global.building_name[building.world_start] = "Start";
global.building_name[building.world_exit] = "Exit";
global.building_name[building.town] = "Town";
global.building_name[building.church] = "Church";
global.building_name[building.dungeon] = "Dungeon";
global.building_name[building.fort] = "Fort";
global.building_name[building.mage_tower] = "Mage Tower";
global.building_name[building.castle] = "Castle";
global.building_name[building.fountain] = "Fountain";
global.building_name[building.altar] = "Altar";
global.building_name[building.monster_camp] = "Monster Camp";
enum building_state{
  ok,
  defeat
}
