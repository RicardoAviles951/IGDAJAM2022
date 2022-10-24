with(o_view_manager)
{
	switch(scr_state){
		case screen.bar:
			scr_state = screen.mix;
		break;
		
		case screen.mix:
			scr_state = screen.bar;
		break;
	}
}