global.items_found += 1;
global.show_found_text = true;
global.last_found_x = x;
global.last_found_y = y;

if (id == obj_key) global.found_key = true;
if (id == obj_flashdrive) global.found_flashdrive = true;
if (id == obj_wallet) global.found_wallet = true;
if (id == obj_tumbler) global.found_tumbler = true;
if (id == obj_shoes) global.found_shoes = true;

instance_destroy();
