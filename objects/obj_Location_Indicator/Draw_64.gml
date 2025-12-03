if (message != "") {
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(font_location);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);

    draw_text(display_get_gui_width() / 2, 40, message);

    // Reset
    draw_set_color(c_white);
    draw_set_font(-1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
