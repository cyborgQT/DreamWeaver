//set global variables here
global.ending_counter = 0;
global.dialog_run = false;
global.move_rooms = false;
instance_create_layer(0, 0, "Instances", obj_input);

// dialog enum
enum dialog {
	child1,
	child2,
	child3,
	child_yes,
	child_no
	}
	
item_index = 0;

global.item[0] = noone;
global.item[1] = noone;
global.item[2] = noone;

//array holding children
global.children[0] = obj_child1;
global.children[1] = obj_child2;
global.children[2] = obj_child3;




