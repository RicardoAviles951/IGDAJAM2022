var c = c_black;
draw_sprite(s_gameover,0,0,0);
draw_self();
draw_set_font(f_start);
draw_set_halign(fa_center);
draw_text_transformed_color(x,y-18,text,.20,.20,0,c,c,c,c,1);
draw_set_halign(fa_left);