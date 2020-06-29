if global.ending_counter = 3 {
	room_goto(rm_good_end);
}

if global.ending_counter < 3 {
	room_goto(rm_bad_end);
}