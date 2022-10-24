draw_set_font(f_gui);
switch(global.mixstate){
	case mixstates.picking://Pick ingredients and perform actions in this state. 
	
	
	var l = array_length(cup);//Stores the lengths of the cup array
	for (var i =0; i<l;i++)    //
	{
		var c = c_black;
		draw_text_color(16,16,"IN CUP:",c,c,c,c,1);
		draw_text_color(16,48+32*i,cup[i],c,c,c,c,1);
		show_debug_message(cup[i]);
	}


	break;
}
