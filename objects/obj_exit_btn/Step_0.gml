// Convert mouse to GUI space
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Calculate top-right position
var btn_x = display_get_gui_width() - btn_w - 20;
var btn_y = 20;

// Click detection
if (mx > btn_x && mx < btn_x + btn_w && my > btn_y && my < btn_y + btn_h) {
    if (mouse_check_button_pressed(mb_left)) {
		global.from_minigame = true;
		global.level = 1;
        room_goto(global.return_room); // or your desired exit
    }
}
