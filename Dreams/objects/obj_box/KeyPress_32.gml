if obj_input.select_ {
	select_count += 1;

	show_debug_message(string(select_count));

	if(select_count < 3){
	if(place_meeting(x+4,y+4,obj_cursor) || place_meeting(x-4,y-4,obj_cursor)){
			sprite_index = spr_inv_select;
			audio_play_sound(snd_select, 2, false);
			if(place_meeting(x+4,y+4,obj_tooth) || place_meeting(x-4,y-4,obj_tooth)){
				show_debug_message("touchin tooth");	
				global.inventory[select_count] = obj_tooth.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_spider) || place_meeting(x-4,y-4,obj_spider)){
				show_debug_message("touchin spider");	
				global.inventory[select_count] = obj_spider.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_ocean) || place_meeting(x-4,y-4,obj_ocean)){
				show_debug_message("touchin ocean");	
				global.inventory[select_count] = obj_ocean.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_candy) || place_meeting(x-4,y-4,obj_candy)){
				show_debug_message("touchin candy");	
				global.inventory[select_count] = obj_candy.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_cactus) || place_meeting(x-4,y-4,obj_cactus)){
				show_debug_message("touchin cactus");	
				global.inventory[select_count] = obj_cactus.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_orange) || place_meeting(x-4,y-4,obj_orange)){
				show_debug_message("touchin orange");	
				global.inventory[select_count] = obj_orange.description;
				show_debug_message(global.inventory[select_count]);
			}
			if(place_meeting(x+4,y+4,obj_fire) || place_meeting(x-4,y-4,obj_fire)){
				show_debug_message("touchin fire");	
				global.inventory[select_count] = obj_fire.description;
				show_debug_message(global.inventory[select_count]);
			}
		
		}
	}
}
