// obj_control → Create Event
win = false;
lose = false;

if (!variable_global_exists("level")) {
    global.level = 1;
}

// set allowed attempts per level
switch (global.level) {
    case 1: goes = 10; break; // Level 1
    case 2: goes = 15; break; // Level 2
    case 3: goes = 25; break; // Level 3
}

global.plays = 0;
matches = 0;

// Initialize global.from_minigame to prevent errors when returning to rooms
if (!variable_global_exists("from_minigame")) {
    global.from_minigame = false;
}
