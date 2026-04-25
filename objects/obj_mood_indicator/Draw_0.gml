var percent = clamp(display_mood / max_mood, 0, 1);

// pixel snapped position
var x1 = round(x / pixel_scale) * pixel_scale;
var y1 = round(y / pixel_scale) * pixel_scale;

// full outline (shows full meter size)
draw_set_color(c_white);
draw_rectangle(
    x1,
    y1,
    x1 + bar_width * pixel_scale,
    y1 + bar_height * pixel_scale,
    false
);

// background inside
draw_set_color(c_black);
draw_rectangle(
    x1 + pixel_scale,
    y1 + pixel_scale,
    x1 + bar_width * pixel_scale - pixel_scale,
    y1 + bar_height * pixel_scale - pixel_scale,
    false
);

// bar color
if (percent <= warning_level)
    draw_set_color(c_red);
else
    draw_set_color(c_lime);

// vertical fill (bottom to top)
var fill_height = bar_height * percent;

draw_rectangle(
    x1 + pixel_scale,
    y1 + (bar_height - fill_height) * pixel_scale,
    x1 + bar_width * pixel_scale - pixel_scale,
    y1 + bar_height * pixel_scale - pixel_scale,
    false
);
