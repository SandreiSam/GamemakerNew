// If the card has no sprite yet, draw the back and stop
if (sprite_index == -1) {
    draw_sprite(spr_back_med, 0, x, y);
    exit;
}

// use back sprite as the base size
var w = sprite_get_width(spr_back_med);
var h = sprite_get_height(spr_back_med);

if (flipped)
{
    draw_sprite_ext(sprite_index, 0, x, y,
        w / sprite_get_width(sprite_index),
        h / sprite_get_height(sprite_index),
        0, c_white, 1);
}
else
{
    draw_sprite(spr_back_med, 0, x, y);
}
