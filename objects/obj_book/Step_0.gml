// In obj_interactive_door -> Step Event

// Check distance between the door and the player
if (distance_to_object(obj_MC) < 30) {
    player_is_close = true;
} else {
    player_is_close = false;
}

// If player is close AND presses E
if (player_is_close && keyboard_check_pressed(ord("E"))) {

    // Save return position
    global.return_room = room;
    global.return_x = obj_MC.x;
    global.return_y = obj_MC.y;

    // Go to quiz room
    room_goto(Fun_Quiz_1);
}
