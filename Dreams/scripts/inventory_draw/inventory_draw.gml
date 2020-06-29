///@arg x
///@arg y
var x_ = argument0;
var y_ = argument1;
var box_sprite = spr_inv_box;

/*box1 = draw_sprite(box_sprite,0,x_,y_);
box2 = draw_sprite(box_sprite,0,x_+1*160,y_);
box3 = draw_sprite(box_sprite,0,x_+2*160,y_);
box4 = draw_sprite(box_sprite,0,x_+3*160,y_);
box5 = draw_sprite(box_sprite,0,x_+4*160,y_);
if(selected1){
		draw_sprite(spr_inv_select, 0,x_,y_);		
}
if(selected2){
		draw_sprite(spr_inv_select, 0, x_ + 1 *160, y_);	
}
if(selected3){
	draw_sprite(spr_inv_select, 0, x_ + 2 *160, y_);	
}*/
var array_length = array_length_1d(global.inventory);
for(var i=0; i<array_length; i++){
	var box_x = x_ +i * 160;
	var box_y = y_;
	//var box_sprite = spr_inv_box;
	
	//draw_sprite(box_sprite,0,box_x,box_y);
	var item=global.inventory[i];
		
	//draws items
	/*if instance_exists(item){
		draw_sprite(item.sprite_, 0, box_x, box_y);
	}*/
	//draws cursor
	if ( i == item_index){
	//	draw_sprite(spr_cursor, image_index/8, box_x, box_y);
				
	}
	
	
}

//equip boxes
/*
for(var i = 0; i < 3; i++){
	draw_sprite(spr_inv_box, 0 , 122 + 200*i , 100);
}
if(instance_exists(global.item[0])){
	draw_sprite(global.item[0].sprite_, 0, 122, 100);
}
if(instance_exists(global.item[1])){
	draw_sprite(global.item[1].sprite_, 0, 322, 100);
}
if(instance_exists(global.item[2])){
	draw_sprite(global.item[2].sprite_, 0,  522, 100);
}
*/