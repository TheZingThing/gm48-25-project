draw_set_color(c_white);
draw_text(25,25,global.money);

// This is a placeholder
draw_text(50, 50, "Wetness " + string(obj_player.towelWetness));


//Draw background for towel
col1 = make_colour_rgb(122, 215, 253);
draw_set_colour(col1);
draw_rectangle(930, 755, 1020, 585, false);

//Fill towel wetness bar
col2 = make_colour_rgb(26, 153, 252);
draw_set_colour(col2);

// Math to scale the MaxWetness to the size of the towel bar.
// Set y_bottom and ending y_top position if the graphic changes
y_bottom = 755;
y_top = 584;
y_difference = y_bottom - y_top;
y_scale = y_difference / obj_player.towelMaxWetness;

// Main wetness 
draw_rectangle(930, y_bottom, 1020, y_bottom - (obj_player.towelWetness * y_scale), false);

// Gradient wetness
draw_rectangle_colour(930,  755 - ((obj_player.towelWetness * y_scale) + 12), 1020, 755 - (obj_player.towelWetness * y_scale), col1, col1, col2, col2, false);

draw_sprite(spr_hud, 0, 0, 0);