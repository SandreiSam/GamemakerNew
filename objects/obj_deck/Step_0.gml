// If the minigame was played in this room, disable interaction
if (variable_global_exists("rooms_played_minigame")) {
    if (ds_map_exists(global.rooms_played_minigame, string(room))) {
        // optional: set a flag used by Draw to show "Completed"
        player_is_close = false;
        // if you want to show a visual "Completed" mark, set a flag:
        completed_in_this_room = true;
        exit; // don't run the rest of the Step (no interaction)
    } else {
        completed_in_this_room = false;
    }
} else {
    completed_in_this_room = false;
}

// Check distance between the door and the player
if (distance_to_object(obj_MC) < 30) {
    player_is_close = true;
} else {
    player_is_close = false;
}

// If player is close AND presses E
if (player_is_close && keyboard_check_pressed(ord("E"))) {

    // Save the player's return location
    global.return_room = room;
    global.return_x = obj_MC.x;
    global.return_y = obj_MC.y;

	// Reset minigame variables for a fresh start
    global.level = 1;
    global.from_minigame = false;

    // Go to the mini-game room
    room_goto(Matching_Game);
}
