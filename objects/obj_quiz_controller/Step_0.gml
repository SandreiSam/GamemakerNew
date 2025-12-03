// ---------------------------------------------------------
//   obj_quiz_controller – STEP EVENT
// ---------------------------------------------------------

var keyA = keyboard_check_pressed(ord("A"));
var keyB = keyboard_check_pressed(ord("B"));
var keyC = keyboard_check_pressed(ord("C"));

// --- If Wrong popup is visible
if (show_wrong) {
    if (mouse_check_button_pressed(mb_left) || keyA) {
        show_wrong = false;
    }
    exit;
}

// --- If Correct popup (LAST QUESTION)
if (show_correct && on_last_correct) {
    if (mouse_check_button_pressed(mb_left) || keyA) {

        // ⭐ AWARD PLAYER MOOD
        global.player_mood += 1;

        // return to previous room
        room_goto(global.return_room);
    }
    exit;
}

// --- If Correct popup and Next button is active
if (show_correct && next_button_active) {
    if (mouse_check_button_pressed(mb_left) || keyA) {
        quiz_goto_next();
    }
    exit;
}

// -----------------------------------------
//   NO POPUPS ACTIVE → CHECK KEYS
// -----------------------------------------

var chosen_correct = undefined;

// Fun_Quiz1
if (room == Fun_Quiz_1) {
    if (keyA) chosen_correct = true;  // obj_lia
    if (keyB) chosen_correct = false; // obj_mia
    if (keyC) chosen_correct = false; // obj_fia
}

// Fun_Quiz2
else if (room == Fun_Quiz_2) {
    if (keyA) chosen_correct = false; // obj_blue
    if (keyB) chosen_correct = true;  // obj_violet
    if (keyC) chosen_correct = false; // obj_pink
}

// Fun_Quiz3
else if (room == Fun_Quiz_3) {
    if (keyA) chosen_correct = false; // obj_EOL
    if (keyB) chosen_correct = true;  // obj_EOH
    if (keyC) chosen_correct = false; // obj_EOTS
}

// -----------------------------------------
//   PROCESS ANSWER
// -----------------------------------------

if (chosen_correct != undefined) {

    if (chosen_correct) {
        show_correct = true;

        // If last question
        if (room == Fun_Quiz_3) {
            next_button_active = false;
            on_last_correct = true;
        } else {
            next_button_active = true;
            on_last_correct = false;
        }
    }
    else {
        show_wrong = true;
        show_correct = false;
        next_button_active = false;
        on_last_correct = false;
    }
}
