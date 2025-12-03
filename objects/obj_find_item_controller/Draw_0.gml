// Draw controller sprite (if any)
draw_self();

// Draw "Found!" text above items
if (global.show_found_text) {
    draw_text(global.last_found_x, global.last_found_y - 20, "Found!");
}

// Draw the list of items on the right side
var right_x = room_width - 200; // distance from right edge
var start_y = 32;

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(right_x, start_y, "Items to find:");
draw_text(right_x, start_y + 28, "- Key" + (global.found_key ? " V" : ""));
draw_text(right_x, start_y + 56, "- Flash Drive" + (global.found_flashdrive ? " V" : ""));
draw_text(right_x, start_y + 84, "- Wallet" + (global.found_wallet ? " V" : ""));
draw_text(right_x, start_y + 112, "- Tumbler" + (global.found_tumbler ? " V" : ""));
draw_text(right_x, start_y + 140, "- Shoes" + (global.found_shoes ? " V" : ""));
