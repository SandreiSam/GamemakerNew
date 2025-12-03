draw_self();

if (player_is_close && !global.find_item_done) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    // Only show prompt before finishing
    draw_text(x, y - 40, "Press E");
}
