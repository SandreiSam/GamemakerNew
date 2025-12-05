// obj_quiz_controller - Step

// read keys
var keyA = keyboard_check_pressed(ord("A"));
var keyB = keyboard_check_pressed(ord("B"));
var keyC = keyboard_check_pressed(ord("C"));
var keySpace = keyboard_check_pressed(vk_space);

// detect current question by room name
var rname = room_get_name(room);
if (rname == "Fun_Quiz_1") current_question = 1;
else if (rname == "Fun_Quiz_2") current_question = 2;
else if (rname == "Fun_Quiz_3") current_question = 3;

// ----------------------------------------------------------------
// NO POPUPS → PLAYER ANSWERS
// ----------------------------------------------------------------
if (!show_correct && !show_wrong)
{
    var ans = "";
    if (keyA) ans = "A";
    else if (keyB) ans = "B";
    else if (keyC) ans = "C";

    if (ans != "")
    {
        if (current_question == 1)
        {
            if (ans == "A") { show_correct = true; next_button_active = true; }
            else show_wrong = true;
        }
        else if (current_question == 2)
        {
            if (ans == "B") { show_correct = true; next_button_active = true; }
            else show_wrong = true;
        }
        else if (current_question == 3)
        {
            if (ans == "B")  // EOH
            {
                show_correct = true;
                next_button_active = false;
                on_last_correct = true;
            }
            else show_wrong = true;
        }
    }

    exit;
}

// ----------------------------------------------------------------
// WRONG POPUP
// ----------------------------------------------------------------
if (show_wrong)
{
    if (keySpace)
    {
        show_wrong = false;
    }
    exit;
}

// LAST QUESTION → FINISH QUIZ
if (show_correct && on_last_correct)
{
    if (keySpace)
    {
        // Give mood point
        global.player_mood += 1;

        // Mark book as finished → disables interaction
        global.book_mini_game_finished = true;

        // Go to YouWin room
        room_goto(YouWin);

        // Optional: set flag if you want to return to previous room later
        global.return_after_win = true;
    }
    exit;
}



// ----------------------------------------------------------------
// CORRECT → GO TO NEXT ROOM (Q1 → Q2 → Q3)
// ----------------------------------------------------------------
if (show_correct && next_button_active)
{
    if (keySpace)
    {
        if (current_question == 1)
        {
            room_goto(asset_get_index("Fun_Quiz_2"));
        }
        else if (current_question == 2)
        {
            room_goto(asset_get_index("Fun_Quiz_3"));
        }

        show_correct = false;
        next_button_active = false;
        on_last_correct = false;
    }

    exit;
}
