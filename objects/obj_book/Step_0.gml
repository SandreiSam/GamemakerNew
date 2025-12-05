// Check distance between player and book
if (distance_to_object(obj_MC) < 30) {
    player_is_close = true;
} else {
    player_is_close = false;
}

// Only allow interaction if book is NOT finished
if (!global.book_mini_game_finished) {

    if (player_is_close && keyboard_check_pressed(ord("E"))) {

        // Save return position
        global.return_room = room;
        global.return_x = obj_MC.x;
        global.return_y = obj_MC.y;

        // Start the quiz chain at Fun_Quiz_1
        room_goto(Fun_Quiz_1);

        // Create quiz controller if it doesn't exist
        if (!instance_exists(obj_quiz_controller)) {
            instance_create_layer(0, 0, "Instances", obj_quiz_controller);
        }
    }

} else {
    // Book finished → cannot interact
    player_is_close = false;
}
