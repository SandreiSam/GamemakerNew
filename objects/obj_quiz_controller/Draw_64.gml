// obj_quiz_controller - Draw GUI

// Only show instructions in quiz rooms
if (room == Fun_Quiz_1 || room == Fun_Quiz_2 || room == Fun_Quiz_3) {

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // --- Instruction bar (dark translucent box) ---
    var instr_w = room_width * 0.8;
    var instr_h = 46;
    var instr_x = (room_width - instr_w)/2;
    var instr_y = room_height - 180;

    // dark translucent background for instructions
    draw_set_color(make_color_rgb(10,10,10));
    draw_set_alpha(0.6);
    draw_rectangle(instr_x, instr_y, instr_x + instr_w, instr_y + instr_h, false);

    // instruction text (white)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(instr_x + instr_w/2, instr_y + instr_h/2, 
        "Press A / B / C to choose. After Correct: press SPACE to continue.");

    // Reset align
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
}

// --- POPUP OVERLAY (dark overlay behind popup to make it visible always) ---
if (show_correct || show_wrong) {
    // semi-dark full-screen overlay
    draw_set_color(make_color_rgb(0,0,0));
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
}

// --- Correct popup (green) ---
if (show_correct) {
    var pw = min(700, room_width * 0.75);
    var ph = 180;
    var px = (room_width - pw)/2;
    var py = (room_height - ph)/2;

    // popup background (light green)
    draw_set_color(make_color_rgb(200,255,200));
    draw_rectangle(px, py, px+pw, py+ph, false);

    // border
    draw_set_color(c_black);
    draw_rectangle(px, py, px+pw, py+ph, true);

    // text
    draw_set_color(c_black);
    draw_text(px + pw/2, py + 44, "Correct!");

    if (on_last_correct) {
        draw_text(px + pw/2, py + 92, "Nice! Press SPACE to finish.");
    } else {
        draw_text(px + pw/2, py + 92, "Press SPACE to go to the next question.");
    }
}

// --- Wrong popup (red) ---
if (show_wrong) {
    var pw2 = min(640, room_width * 0.65);
    var ph2 = 140;
    var px2 = (room_width - pw2)/2;
    var py2 = (room_height - ph2)/2;

    draw_set_color(make_color_rgb(255,200,200));
    draw_rectangle(px2, py2, px2+pw2, py2+ph2, false);
    draw_set_color(c_black);
    draw_rectangle(px2, py2, px2+pw2, py2+ph2, true);

    draw_set_color(c_black);
    draw_text(px2 + pw2/2, py2 + 44, "Wrong answer.");
    draw_text(px2 + pw2/2, py2 + 92, "Press SPACE to try again.");
}

// restore defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);
