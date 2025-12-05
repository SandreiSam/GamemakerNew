// obj_quiz_controller - Create

// Quiz state
current_question = 1;
show_correct = false;
show_wrong = false;
next_button_active = false;
on_last_correct = false;

// Labels (display only)
btn_label_A = "A";
btn_label_B = "B";
btn_label_C = "C";

// Safety GUI rects (not used for clicking in key-only mode, but kept)
btnA_x1 = -1; btnA_x2 = -1;
btnB_x1 = -1; btnB_x2 = -1;
btnC_x1 = -1; btnC_x2 = -1;
btn_y1  = -1; btn_y2  = -1;

// Popup Next rect (for SPACE logic, keep initialized)
popup_next_x1 = -1; popup_next_x2 = -1; popup_next_y1 = -1; popup_next_y2 = -1;
