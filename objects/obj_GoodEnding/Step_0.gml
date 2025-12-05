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
    current_dialogue = "When I walk into the living room, Mom and Dad are sitting together-not arguing, not pretending, just... waiting for me.";
    portrait_sprite = 0;
    global.dialogue_visible = true;
    reset_typewriter();
} else if (dialogue_stage == 0 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 1;
    dialogue_speaker = "Inner thought";
    current_dialogue = "They both look exhausted, but calm.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 1 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 2;
    dialogue_speaker = "Dad";
    current_dialogue = "Lia... we're glad you're home.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 2 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 3;
    dialogue_speaker = "Mom";
    current_dialogue = "We wanted to talk to you. Really talk.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 3 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 4;
    dialogue_speaker = "Inner thought";
    current_dialogue = "I walked to them cautiously.";
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
    dialogue_speaker = "Inner thought";
    current_dialogue = "Mom takes my hand.";
    portrait_sprite = 0;
	global.dialogue_visible = true;
    reset_typewriter();
} else if (dialogue_stage == 9 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 10;
    dialogue_speaker = "Mom";
    current_dialogue = "We're still working things out. Nothing is final.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 10 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 11;
    dialogue_speaker = "Dad";
    current_dialogue = "But we're getting help. Counseling. For us... and for you, if you want it.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 11 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 12;
    dialogue_speaker = "Inner thought";
    current_dialogue = "I blink, tears gathering at the corners of my eyes.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 12 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 13;
    dialogue_speaker = "Dad";
    current_dialogue = "We realized we can't keep doing this alone. And we don't want you to feel alone anymore.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 13 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 14;
    dialogue_speaker = "Inner thought";
    current_dialogue = "For the first time in days, something warm blooms in my chest.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 14 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 15;
    dialogue_speaker = "Mom";
    current_dialogue = "We'll figure this out together. As a family.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 15 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 16;
    dialogue_speaker = "Inner thought";
    current_dialogue = "I finally let myself breathe-really breathe.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 16 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 17;
    dialogue_speaker = "Inner thought";
    current_dialogue = "And it doesn't hurt as much as it used to.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 17 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    dialogue_stage = 18;
    dialogue_speaker = "Narration";
    current_dialogue = "Lia finds support, connection, and hope. Her family begins healing, and she isn't carrying everything alone anymore.";
    portrait_sprite = 0;
    reset_typewriter();
} else if (dialogue_stage == 18 && keyboard_check_pressed(vk_space) && typewriter_index >= string_length(current_dialogue)) {
    global.dialogue_visible = false;
    global.cutscene_active = false;
    room_goto(room_TheEnd_Indicator);
}