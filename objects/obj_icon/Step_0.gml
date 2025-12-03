// ⚠ Ensure the variable exists
if (!variable_global_exists("find_item_done")) {
    global.find_item_done = false;
}

// Check if the player is near the icon
if (distance_to_object(obj_MC) < 30) {
    player_is_close = true;
} else {
    player_is_close = false;
}

// Only allow interaction if minigame is NOT done
if (!global.find_item_done) {
    if (player_is_close && keyboard_check_pressed(ord("E"))) {
        // Save player position to return later
        global.return_room = room;
        global.return_x = obj_MC.x;
        global.return_y = obj_MC.y;

        // Go to minigame
        room_goto(Find_Items);
    }
}
