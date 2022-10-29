/// @description Draw Customer satisfaction
// You can write your code in this editor

var c1 = c_green;
var c2 = c_red;
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

draw_text_color(0, 0, "Satisfied Customers: " + string(global.satisfiedCustomers) + "/3", c1, c1, c1, c1, 255);
draw_set_halign(fa_right);
draw_text_color(guiW, 0, "Unsatisfied Customers: " + string(global.unsatisfiedCustomers) + "/2", c2, c2, c2, c2, 255);
draw_set_halign(fa_left);
