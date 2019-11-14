draw_self();
draw_set_colour(c_black);
if(global.debugging_grid){
  draw_text(x, y-20, string(qrKey));
  draw_text(x, y, string(pos_q) +", "+ string(pos_r));
  draw_text(x, y+20,  string(x) +", "+ string(y))
  /* draw_text(x, y-40, string(scr_qr_point_get_q(qrKey)) +", "+ string(scr_qr_point_get_r(qrKey))); */
}
