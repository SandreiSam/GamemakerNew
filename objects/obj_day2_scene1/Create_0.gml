// CREATE

// Cutscene control
cutscene_step = 0;
cutscene_timer = 0;
global.cutscene_active = true;

// Set default cutscene if not already set
if (!variable_global_exists("cutscene_id")) { global.cutscene_id = 0; }
cutscene_id = global.cutscene_id;

// Fade
fade_alpha = 1;

// Dialogue system
global.dialogue_visible = false;
dialogue_speaker = "";
current_dialogue = "";
displayed_text = "";
typewriter_speed = 1.2;
typewriter_counter = 0;
typewriter_index = 0;

// Choices
choice_active = false;
choice_options = [];
choice_selected = 0;
choice_made = false;
choice_result = -1;

if (!variable_global_exists("player_mood")) { global.player_mood = 0; }
player_mood = global.player_mood;


// Helper
dialogue_stage = 0;

portrait_sprite = -1; // No sprite by default (instead of noone)

// --- Skip cutscene if returning from minigame ---
if (variable_global_exists("from_minigame") && global.from_minigame) {
    global.from_minigame = false;       // reset
    global.cutscene_active = false;     // skip cutscene
    
    // Restore player position
    if (instance_exists(obj_MC)) {
        obj_MC.x = global.return_x;
        obj_MC.y = global.return_y;
    }

    cutscene_step = -1; // optional: mark cutscene done
    exit;               // skip the rest of the Create Event
}



