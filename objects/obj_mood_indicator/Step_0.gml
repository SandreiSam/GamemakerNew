var target = clamp(global.player_mood, 0, max_mood);
display_mood = lerp(display_mood, target, 0.1);
display_mood = max(display_mood, 0); // prevents smooth value from going negative
