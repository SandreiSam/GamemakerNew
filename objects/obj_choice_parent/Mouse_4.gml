// obj_choice_parent Left Pressed
var ctrl = instance_find(obj_quiz_controller, 0);
if (ctrl == noone) {
    // safety — if controller missing, just do nothing
    exit;
}

if (is_correct) {
    // correct answer
    ctrl.show_correct = true;
    // if current room is the last quiz room, we want to return to global.return_room immediately (alternatively you could show a Next)
    if (room == room_Fun_Quiz3) {
        // correct on last question → go back to return room
        // show popup briefly (optional) then return
        // We'll show the popup but without a 'Next' button; clicking A or anywhere will return
        ctrl.next_button_active = false;
        // We will wait for user to click or press A to return:
        // Use a small helper variable to indicate last question success
        ctrl.on_last_correct = true;
        // show_correct will present the popup
    } else {
        // intermediate question: show Next button
        ctrl.next_button_active = true;
        ctrl.on_last_correct = false;
    }
} else {
    // wrong
    ctrl.show_wrong = true;
    ctrl.show_correct = false;
    ctrl.next_button_active = false;
}
