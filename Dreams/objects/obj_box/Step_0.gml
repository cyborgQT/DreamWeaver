if(room == rm_first_child){
	if(select_count = 2){
		
		if((global.inventory[0] == "tooth" || global.inventory[1] == "tooth" || global.inventory[2] == "tooth") 
		&& (global.inventory[0] == "ocean" || global.inventory[1] == "ocean" || global.inventory[2] == "ocean") 
		&& (global.inventory[0] == "candy" || global.inventory[1] == "candy" || global.inventory[2] == "candy")){			
			show_debug_message("correct input");	
			if(!global.dialog_run) {
				scr_dialog(dialog.child_yes);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_success, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				global.ending_counter += 1;
				show_debug_message(global.ending_counter);
				room_goto(rm_second_child);
			}
			
		} else {
			show_debug_message("incorrect input");
			if(!global.dialog_run) {
				scr_dialog(dialog.child_no);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_failure, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				room_goto(rm_second_child);
			}
		} 
	}
}

if(room == rm_second_child){
	if(select_count = 2){
		
		if((global.inventory[0] == "cactus" || global.inventory[1] == "cactus" || global.inventory[2] == "cactus") 
		&& (global.inventory[0] == "orange" || global.inventory[1] == "orange" || global.inventory[2] == "orange") 
		&& (global.inventory[0] == "fire" || global.inventory[1] == "fire" || global.inventory[2] == "fire")){			
			show_debug_message("correct input");	
			if(!global.dialog_run) {
				scr_dialog(dialog.child_yes);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_success, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				global.ending_counter += 1;
				show_debug_message(global.ending_counter);
				room_goto(rm_third_child);
			}
			
		} else {
			show_debug_message("incorrect input");
			if(!global.dialog_run) {
				scr_dialog(dialog.child_no);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_failure, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				room_goto(rm_third_child);
			}
		} 
	}
}

if(room == rm_third_child){
	if(select_count = 2){
		
		if((global.inventory[0] == "spider" || global.inventory[1] == "spider" || global.inventory[2] == "spider") 
		&& (global.inventory[0] == "candy" || global.inventory[1] == "candy" || global.inventory[2] == "candy") 
		&& (global.inventory[0] == "cactus" || global.inventory[1] == "cactus" || global.inventory[2] == "cactus")){			
			show_debug_message("correct input");	
			if(!global.dialog_run) {
				scr_dialog(dialog.child_yes);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_success, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				global.ending_counter += 1;
				show_debug_message(global.ending_counter);
				scr_endings();
			}
			
		} else {
			show_debug_message("incorrect input");
			if(!global.dialog_run) {
				scr_dialog(dialog.child_no);
				global.dialog_run = true;
				global.move_rooms = true;
				audio_play_sound(snd_failure, 2, false);
			}					
			if(global.move_rooms && !instance_exists(obj_dialog)){
				scr_endings();
			}
		} 
	}
}