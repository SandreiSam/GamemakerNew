global.items_found = 0;
global.show_found_text = false;
global.show_found_text_timer = 0;
global.last_found_x = 0;
global.last_found_y = 0;

if (!variable_global_exists("find_item_done")) {
    global.find_item_done = false;
}

// Prevent errors if the variable doesn’t exist yet
if (!variable_global_exists("from_minigame")) {
    global.from_minigame = false;
}

global.found_key = false;
global.found_flashdrive = false;
global.found_wallet = false;
global.found_tumbler = false;
global.found_shoes = false;
