if global.mixstate == mixstates.finished{
	array_sort(current_drink,true);
	array_sort(o_shaker.cup,true);
	if array_equals(current_drink,o_shaker.cup){
		correct = true;
		//show_debug_message("EQUALS");
	}
	else{
		correct = false;
		//show_debug_message("NOT EQUALS");
	}
}
