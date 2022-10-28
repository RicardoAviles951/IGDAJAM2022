if tapped{
	var guiW = display_get_gui_width();
	var guiH = display_get_gui_height();
	draw_sprite_stretched_ext(s_pixel,0,0,0,guiW,guiH,c_white,alpha);
	alpha+=1/60;
}