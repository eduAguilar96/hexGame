draw_self();
if(global.debugging_hex){
  draw_text(x-40,y-40, "trrn: " + debug_terrain_type);
  draw_text(x-40,y-60, "bldg: " + debug_building_type);
}
if(global.debugging_grid){
  draw_set_colour(c_black);
  draw_text(x, y-20, string(qrKey));
  draw_text(x, y, string(pos_q) +", "+ string(pos_r));
  draw_text(x, y+20,  string(x) +", "+ string(y));
}
