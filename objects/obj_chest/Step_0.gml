/// @description Step
// You can write your code in this editor

//COLLISION VARIABLES
//var top_collision = (collision_line(x, y-1, x+sprite_width, y-1, obj_map01, false, false))
//var bottom_collision = (collision_line(x, y+sprite_height+1, x+sprite_width, y+sprite_height+1, obj_map01, false, false))
//var right_collision = (collision_line(x+sprite_width+1, y, x+sprite_width+1, y+sprite_height, obj_map01, false, false))
//var left_collision = (collision_line(x-1, y, x-1, y+sprite_height, obj_map01, false, false))

//var top_acc_collision = (collision_line(x, y+yspeed, x+sprite_width, y+yspeed, obj_map01, false, false))
//var bottom_acc_collision = (collision_line(x, y+sprite_height+yspeed, x+sprite_width, y+sprite_height+yspeed, obj_map01, false, false))
//var right_acc_collision = (collision_line(x+sprite_width+xspeed, y, x+sprite_width+xspeed, y+sprite_height, obj_map01, false, false))
//var left_acc_collision = (collision_line(x+xspeed, y, x+xspeed, y+sprite_height, obj_map01, false, false))

//CHECK IF IN GROUND

keyDown = keyboard_check(ord("S"))
keyRight = keyboard_check(ord("D"))
keyLeft = keyboard_check(ord("A"))
keyPressedUp = keyboard_check_pressed(ord("W"))
keyPressedSpace = keyboard_check_pressed(vk_space)
keyPressedDown = keyboard_check_direct(ord("S"))

switch (state){
	case STATE.FREE: PlayerStepFree(); break;
	case STATE.ATTACK: PlayerStepAttack(); break;
	case STATE.COMBO: PlayerStepCombo(); break;
	default: PlayerStepFree(); break;
}
