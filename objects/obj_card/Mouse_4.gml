///allow flipping if only 1 card selected
var w = sprite_get_width(spr_back_med);
var h = sprite_get_height(spr_back_med);

if (!point_in_rectangle(mouse_x, mouse_y, x, y, x + w, y + h)) {
    exit;
}


if !flipped && global.plays<2
{
	flipped = true;
	ds_list_add(global.selected, id);
	audio_play_sound(snd_Cardflip, 1, false);
	global.plays++;
}