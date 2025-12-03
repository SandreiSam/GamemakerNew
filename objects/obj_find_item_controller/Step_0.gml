// Handle temporary "Found!" text
if (global.show_found_text) {
    global.show_found_text_timer += 1;
    if (global.show_found_text_timer > 30) {
        global.show_found_text = false;
        global.show_found_text_timer = 0;
    }
}

// ✅ Check if all items are found AND minigame is not yet locked
if (global.items_found >= 5 && !global.find_item_done) {

    // ✅ Lock the minigame forever
    global.find_item_done = true;

    // ✅ Add 1 point to player mood safely
    if (variable_global_exists("player_mood")) {
        global.player_mood += 1;
    } else {
        global.player_mood = 1;
    }

    // ✅ Return safely to story room
    global.from_minigame = true;
    room_goto(global.return_room);
}
