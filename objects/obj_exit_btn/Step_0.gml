var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var btn_x = display_get_gui_width() - btn_w - 20;
var btn_y = 20;

if (mx > btn_x && mx < btn_x + btn_w && my > btn_y && my < btn_y + btn_h) {
    if (mouse_check_button_pressed(mb_left)) {
        
        // Mark the minigame in this room as played
        if (!variable_global_exists("rooms_played_minigame")) {
            global.rooms_played_minigame = ds_map_create();
        }
        ds_map_add(global.rooms_played_minigame, string(global.return_room), true);

        global.from_minigame = true;
        global.level = 1;
        room_goto(global.return_room);
    }
}
