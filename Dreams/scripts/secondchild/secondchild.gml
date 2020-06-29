global.dialog_run = false;
global.move_rooms = false;
global.inventory[0] = noone;
global.inventory[1] = noone;
global.inventory[2] = noone;

//change sprite to child
sprite_index = spr_child2;

//call dialog prompt for child1
scr_dialog(dialog.child2);
