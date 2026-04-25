// Press ENTER / SPACE to continue to endings
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {

    if (global.player_mood == 21) {
        room_goto(room_GoodEnding_Indicator);

    } else if (global.player_mood > 14 && global.player_mood < 21) {
        room_goto(room_NeutralEnding_Indicator);

    } else {
        room_goto(room_BadEnding_Indicator);
    }
}
