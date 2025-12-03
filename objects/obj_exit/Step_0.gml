// Check if player clicked on the button
if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    
    // ✅ Lock the minigame so it can't be replayed
    global.find_item_done = true;

    global.from_minigame = true; // optional flag
    room_goto(global.return_room); // return to story room
}
