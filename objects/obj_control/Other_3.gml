/// obj_control -> Game End Event
if (variable_global_exists("rooms_played_minigame")) {
    if (ds_map_exists(global.rooms_played_minigame, "")) {
        // nothing needed; just safe-check
    }
    ds_map_destroy(global.rooms_played_minigame);
    variable_global_delete("rooms_played_minigame");
}