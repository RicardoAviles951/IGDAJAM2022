switch(scr_state){
	case screen.bar:
		view_visible[0] = true;
		view_visible[1] = false;
		txt = "BAR";
	break;
	
	case screen.mix:
		view_visible[1] = true; 
		view_visible[0] = false;
		txt = "MIX";
	break;
}