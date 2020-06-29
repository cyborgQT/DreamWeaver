// takes away your power when dialog boxes are up
if instance_exists(obj_dialog) {
	right_ = 0;
	left_ = 0;
	select_ = 0;
} else {
	right_ = keyboard_check_pressed(vk_right);
	left_ = keyboard_check_pressed(vk_left);
	select_ = keyboard_check_pressed(vk_space);
}

