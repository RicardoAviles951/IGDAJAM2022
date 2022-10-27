draw_set_font(f_gui);
switch(global.mixstate){
	case mixstates.picking://Pick ingredients and perform actions in this state. 
	
	var guiW = display_get_gui_width();
	var guiH = display_get_gui_height();
	var _x = guiW/3-96;
	var _y = guiH/3;
	var l = array_length(cup);//Stores the lengths of the cup array
	if o_view_manager.scr_state = o_view_manager.screen.mix{
	for (var i =0; i<l;i++)    //
	{
		var c = c_white;
		draw_text_color(_x,_y-32,"IN CUP:",c,c,c,c,1);
		draw_text_color(_x,_y+32*i,cup[i],c,c,c,c,1);
		show_debug_message(cup[i]);
	}
	}

	break;
}
