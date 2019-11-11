/// @description Insert description here
// You can write your code in this editor

DoPhysics()

if(hp <= 0) instance_destroy()

if(!on_air){
	var player_dir = point_direction(x, y, obj_chest.x, obj_chest.y)
	if(player_dir < 90 || player_dir > 270){
		// Player is right.
		image_xscale = -1
		xspeed = 5
	}
	else if(player_dir > 90 && player_dir < 270){
		// Player is left.
		image_xscale = 1
		xspeed = -5
	} else {
		xspeed = 0
	}
	
	if(abs(obj_chest.x-x) > sprite_width){
		if(sprite_index == spr_littlebox_air){
			sprite_index = spr_littlebox_ground
			image_index = 0
			xspeed = 0
		} else if(image_index > 4){
			sprite_index = spr_littlebox_air
			jump_count = max_jumps
			jump_power = random_range(jump_power_base-jump_power_threshold, jump_power_base+jump_power_threshold)
			DoJump()
		} else {
			xspeed = 0
		}
	} else {
		xspeed = 0
		sprite_index = spr_littlebox_ground
		image_index = 0
	}
}


if(xspeed < 0) image_xscale = -1
else if(xspeed > 0) image_xscale = 1