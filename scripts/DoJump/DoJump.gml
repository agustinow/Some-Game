if (jump_count == max_jumps){
	yspeed -= jump_power
	jump_count--
} else if (jump_count != 0){
	yspeed = yspeed/2 - (jump_power/4)*3
	jump_count--
	
	if(image_xscale > 0) image_angle = -1
	else image_angle = 1
	is_rotating = true
}