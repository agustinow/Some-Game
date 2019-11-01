//COLLISION CHECKS
if(collision_line(x-sprite_width/2, y-sprite_height/2-1, x+sprite_width/2, y-sprite_height/2-1, obj_map01, false, false)){
	//TOP COLLISION
	if(yspeed < 0) yspeed = 0
}
if(collision_line(x-abs(sprite_width)/2-1, y-sprite_height/2, x-abs(sprite_width)/2-1, y+sprite_height/2, obj_map01, false, false)){
	//LEFT COLLISION
	if(xspeed < 0) xspeed = 0
}
if(collision_line(x+sprite_width/2+1, y, x+sprite_width/2+1, y+sprite_height/2, obj_map01, false, false)){
	//RIGHT COLLISION
	if(xspeed > 0) xspeed = 0
}

//MOVEMENT
//Y MOVEMENT REMASTERED
if (yspeed > 0){
	//GOING DOWN
	if(collision_line(x-abs(sprite_width)/2, y+sprite_height/2+yspeed, x+abs(sprite_width)/2, y+sprite_height/2+yspeed, obj_map01, false, false)){
		//SLOWLY GO DOWN
		while(!collision_line(x-abs(sprite_width)/2, y+sprite_height/2+1, x+abs(sprite_width)/2, y+sprite_height/2+1, obj_map01, false, false)){
			y = round(y+1)
		}
	} else {
		//JUST MOVE
		y = round(y+yspeed)
	}
	while(collision_line(x-abs(sprite_width)/2, y+sprite_height/2, x+abs(sprite_width)/2, y+sprite_height/2, obj_map01, false, false)){
		y = round(y-1)
	}
}
else if (yspeed < 0){
	//GOING UP
	if(collision_line(x-abs(sprite_width)/2, y-sprite_height/2+yspeed, x+abs(sprite_width)/2, y-sprite_height/2+yspeed, obj_map01, false, false)){
		//SLOWLY GO UP
		while(!collision_line(x-abs(sprite_width)/2, y-sprite_height/2-1, x+abs(sprite_width)/2, y-1, obj_map01, false, false)){
			y = round(y-1)
		}
	} else {
		//JUST MOVE
		y = round(y+yspeed)
	}
	while(collision_line(x-abs(sprite_width)/2, y-sprite_height/2, x+abs(sprite_width)/2, y-sprite_height/2, obj_map01, false, false)){
		y = round(y+1)
	}
}
//END Y MOVEMENT

//X MOVEMENT REMASTERED
if (xspeed > 0){
	//GOING RIGHT
	if(collision_line(x+abs(sprite_width)/2+xspeed, y-sprite_height/2, x+abs(sprite_width)/2+xspeed, y+sprite_height/2, obj_map01, false, false)){
		//SLOWLY GO RIGHT
		while(!collision_line(x+abs(sprite_width)/2+1, y-sprite_height/2, x+abs(sprite_width)/2+1, y+sprite_height/2, obj_map01, false, false)){
			x = round(x+1)
		}
	} else {
		//JUST MOVE
		x = round(x+xspeed)
	}
	while(collision_line(x+abs(sprite_width)/2, y-(sprite_height)/2, x+abs(sprite_width)/2, y+sprite_height/2, obj_map01, false, false)){
		x = round(x-1)
	}
} else if (xspeed < 0){
	//GOING LEFT
		if(collision_line(x-abs(sprite_width)/2+xspeed, y-sprite_height/2, x-abs(sprite_width)/2+xspeed, y+sprite_height/2, obj_map01, false, false)){
		//SLOWLY GO LEFT
		while(!collision_line(x-abs(sprite_width)/2-1, y-sprite_height/2, x-abs(sprite_width)/2-1, y+sprite_height/2, obj_map01, false, false)){
			x = round(x-1)
		}
	} else {
		//JUST MOVE
		x = round(x+xspeed)
	}
	while(collision_line(x-abs(sprite_width)/2, y-sprite_height/2, x-abs(sprite_width)/2, y+sprite_height/2, obj_map01, false, false)){
		x = round(x+1)
	}
}
//END X MOVEMENT

if(collision_line(x-sprite_width/2, y+sprite_height/2+1, x+sprite_width/2, y+sprite_height/2+1, obj_map01, false, false)){
	on_air = false
	jump_count = max_jumps
	yspeed = 0
} else {
	on_air = true
	if(jump_count == max_jumps) jump_count = 1
	yspeed += self_gravity
}

if (xspeed > 0) xspeed -= self_friction	
else if (xspeed < 0) xspeed += self_friction