// Check if the player is near the icon
if (distance_to_object(obj_MC) < 30) {
    player_is_close = true;
} else {
    player_is_close = false;
}

// If the player is close and presses E
if (player_is_close && keyboard_check_pressed(ord("E"))) {

    // Save current location so you can return later
    global.return_room = room;
    global.return_x = obj_MC.x;
    global.return_y = obj_MC.y;

    // Go to Find Item minigame
    room_goto(Find_Items);
}
