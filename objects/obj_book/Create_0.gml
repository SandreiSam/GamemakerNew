// Track if player is near the book
player_is_close = false;

// Initialize global variables safely
if (!variable_global_exists("book_mini_game_finished")) {
    global.book_mini_game_finished = false;
}

if (!variable_global_exists("return_room")) {
    global.return_room = room; // or you can set it to noone / a default room
}


// This is the text that will appear above the door.
prompt_text = "[E] Interact";