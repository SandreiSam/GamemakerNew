/// quiz_goto_next(); (create as script or paste in a Script resource)
function quiz_goto_next() {
    // determine current room and go to the next quiz room
    // replace these room names with your actual room resource names if different
    if (room == Fun_Quiz_1) {
        // goto Quiz2
        room_goto(Fun_Quiz_2);
    } else if (room == Fun_Quiz_2) {
        // goto Quiz3
        room_goto(Fun_Quiz_3);
    } else {
        // if somehow here or last question: return to global.return_room
        if (variable_global_exists("return_room")) {
            room_goto(global.return_room);
        } else {
            // fallback to first room
            room_goto(Fun_Quiz_1);
        }
    }

    // reset UI flags (not strictly necessary since controller is re-created in new room)
    show_correct = false;
    next_button_active = false;
}
