/// @description dialogue(scene);
/// @param scene
/**
 * Dialogue
 *
 * Call this script whenever you would like a dialogue box to appear,
 * with the third argument being which scenerio to render.
 *
 *  scene (arg0) - type int - the scenerio to play, as per the switch statement cases
 */
//if (!instance_exists(obj_dialog))
//{
	var obj = instance_create_layer(0, 0, "Dialog", obj_dialog); // create the dialogue instance
//}

switch (argument0) { //child1 prompt
    case (0):
        obj.msg[0] = "This child..."; // message
        obj.xx[0] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[0] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[1] = "Enjoys family vacations..."; // message
		obj.xx[1] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[1] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[2] = "Aspires to be a dentist..."; // message
        obj.xx[2] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[2] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[3] = "But has a horrible sweet tooth."; // message
        obj.xx[3] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[3] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		break;
}	

switch (argument0) { //child2 prompt
    case (1):
        obj.msg[0] = "This child..."; // message
        obj.xx[0] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[0] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[1] = "Enjoys gardening with his mom..."; // message
		obj.xx[1] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[1] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[2] = "Loves picking fruit from the trees in his backyard..."; // message
        obj.xx[2] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[2] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[3] = "And has an odd affinity for matches."; // message
        obj.xx[3] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[3] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		break;
}		

switch (argument0) { //child3 prompt
    case (2):
        obj.msg[0] = "This child..."; // message
        obj.xx[0] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[0] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[1] = "Likes all things creepy-crawly..."; // message
		obj.xx[1] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[1] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[2] = "Secretly loves the color pink..."; // message
        obj.xx[2] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[2] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		
		obj.msg[3] = "And has a soft spot for succulents."; // message
        obj.xx[3] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[3] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		break;
}		

switch (argument0) { //child yes
    case (3):
        obj.msg[0] = "This child enjoyed a wonderful dream."; // message
        obj.xx[0] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[0] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		break;
}	

switch (argument0) { //child no
    case (4):
        obj.msg[0] = "This child woke up from a terrible nightmare."; // message
        obj.xx[0] = obj_orb.x - 235; // dialogue position (middle of box/pointer) x
        obj.yy[0] = obj_orb.y - 100; // dialogue position (bottom of pointer) y
		break;
}	

