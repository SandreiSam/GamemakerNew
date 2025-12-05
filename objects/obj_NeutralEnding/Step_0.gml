// Fade in Logic
if (fade_alpha > 0) {
    fade_alpha -= 0.02;
}

// Typewriter and Skip Typewriter Logic
if (global.dialogue_visible) {
    var total_dialogue_length = string_length(current_dialogue);
    
    if (typewriter_index < total_dialogue_length) {
        if (keyboard_check_pressed(vk_space)) {
            typewriter_index = total_dialogue_length;
            exit;
        }

        typewriter_counter += 1;
        
        if (typewriter_counter >= typewriter_speed) {
            typewriter_counter = 0;
            typewriter_index = min(typewriter_index + 1, total_dialogue_length);
            displayed_text = string_copy(current_dialogue, 1, typewriter_index);
        }
    }

    displayed_text = string_copy(current_dialogue, 1, typewriter_index);
} else {
    typewriter_index = 0;
    displayed_text = "";
    typewriter_counter = 0;
}

// Dialogue
if (dialogue_stage == 0 && !global.dialogue_visible) {
    dialogue_speaker = "Inner thought";
    current_dialogue = "When I get home, Mom and Dad are in the living room again.";
    portrait_sprite = 0;
    global.dialogue_visible = true;
    reset_typewriter();
} else if (dialogue_stage == 0 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 1;
    dialogue_speaker = "Inner thought";
    current_dialogue = "They look tired, but peaceful enough.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 1 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 2;
    dialogue_speaker = "Mom";
    current_dialogue = "Hey, sweetie... we won't keep you long.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 2 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 3;
    dialogue_speaker = "Dad";
    current_dialogue = "We're still trying to decide what's best.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 3 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 4;
    dialogue_speaker = "Inner thought";
    current_dialogue = "I nod slowly, not sure what to say.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 4 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    global.dialogue_visible = false;
    dialogue_stage = 5;
} else if (dialogue_stage == 5) {
    with (obj_MC) {
        target_x = self.x;
        target_y = 368;
        is_moving_automatically = true;
    }
    dialogue_stage = 6;
} else if (dialogue_stage == 6 && !obj_MC.is_moving_automatically) {
    with (obj_MC) {
        target_x = obj_Mother.x;
        target_y = self.y;
        is_moving_automatically = true;
    }
    dialogue_stage = 7;
} else if (dialogue_stage == 7 && !obj_MC.is_moving_automatically) {
    with (obj_MC) {
        target_x = self.x;
        target_y = 320;
        is_moving_automatically = true;
    }
    dialogue_stage = 8;
} else if (dialogue_stage == 8 && !global.dialogue_visible && !obj_MC.is_moving_automatically) {
    dialogue_stage = 9;
    dialogue_speaker = "Mom";
    current_dialogue = "We're not separating yet. We just... need space to think.";
    portrait_sprite = 0;
	global.dialogue_visible = true;
    reset_typewriter();
} else if (dialogue_stage == 9 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 10;
    dialogue_speaker = "Dad";
    current_dialogue = "We don't want you to worry more than you have to.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 10 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 11;
    dialogue_speaker = "Inner thought";
    current_dialogue = "There's no anger. But no comfort either. Just... uncertainty.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 11 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 12;
    dialogue_speaker = "Mom";
    current_dialogue = "One day at a time, okay?";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 12 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 13;
    dialogue_speaker = "Inner thought";
    current_dialogue = "I go to my room, unsure of what tomorrow brings, but relieved it isn't crashing down today.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 13 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 14;
    dialogue_speaker = "Narration";
    current_dialogue = "Lia's family isn't fixed, but it isn't falling apart completely. She has space to breathe, but not peace. Hope exists-but it's fragile.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 14 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    global.dialogue_visible = false;
    global.cutscene_active = false;
    room_goto(room_TheEnd_Indicator);
}