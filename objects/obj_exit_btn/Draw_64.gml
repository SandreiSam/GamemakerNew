var btn_x = display_get_gui_width() - btn_w - 20;
var btn_y = 20;

// Grey button
draw_set_color(make_color_rgb(180,180,180));
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);

// Text
draw_set_color(c_black);
draw_text(btn_x + 28, btn_y + 10, "Exit");

// Reset GUI for all other objects
draw_set_color(c_white);
draw_set_alpha(1);
