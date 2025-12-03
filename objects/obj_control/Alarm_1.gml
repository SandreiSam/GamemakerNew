if (lose) {
    show_debug_message("You Lose");
	global.from_minigame = true;
	global.level = 1;
	
	ds_map_add(global.rooms_played_minigame, string(global.return_room), true);
    room_goto(global.return_room);
}

if (win) {
    show_debug_message("You Win All Levels!");
	global.from_minigame = true;
	global.player_mood += 1;
	
	ds_map_add(global.rooms_played_minigame, string(global.return_room), true);
    room_goto(global.return_room);
}
