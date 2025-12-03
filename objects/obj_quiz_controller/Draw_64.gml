// obj_quiz_controller - Draw GUI (fixed)

if (show_correct) {
    // popup background
    var popup_w = 520;
    var popup_h = 160;
    var popup_x = (room_width - popup_w) / 2;
    var popup_y = (room_height - popup_h) / 2;

    draw_set_alpha(0.85);
    draw_rectangle(popup_x, popup_y, popup_x + popup_w, popup_y + popup_h, false); // filled rect
    draw_set_alpha(1);

    draw_set_halign(fa_center);
    draw_text(room_width / 2, popup_y + 38, "Correct!");
    draw_set_halign(fa_left);

    // message
    draw_set_halign(fa_center);
    draw_text(room_width / 2, popup_y + 72, "Tap Next to continue.");
    draw_set_halign(fa_left);

    if (next_button_active) {
        // draw Next button (use the button coords you created in Create)
        draw_set_halign(fa_center);
        draw_rectangle(button_x, button_y, button_x + button_w, button_y + button_h, false);
        draw_text(button_x + button_w / 2, button_y + button_h / 2 - 8, "Next");
        draw_set_halign(fa_left);
    }
}

if (show_wrong) {
    var popup2_w = 420;
    var popup2_h = 120;
    var popup2_x = (room_width - popup2_w) / 2;
    var popup2_y = (room_height - popup2_h) / 2;

    draw_set_alpha(0.85);
    draw_rectangle(popup2_x, popup2_y, popup2_x + popup2_w, popup2_y + popup2_h, false);
    draw_set_alpha(1);

    draw_set_halign(fa_center);
    draw_text(room_width / 2, popup2_y + 42, "Wrong answer.");
    draw_text(room_width / 2, popup2_y + 76, "Try again.");
    draw_set_halign(fa_left);
}
