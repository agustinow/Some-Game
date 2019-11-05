//LATERAL MOVEMENT
if ( (keyRight && !keyLeft) || (!keyRight && keyLeft) ){
	if(keyLeft){
		image_xscale = -1
		if(xspeed > -5) xspeed -= 0.5
	}
	else {
		image_xscale = 1
		if(xspeed < 5) xspeed += 0.5
	}
}

DoPhysics()
	if(is_rotating){
		if(image_angle < 0){
			if(image_angle < -359){
				is_rotating = false
				image_angle = 0
			} else {
				image_angle -= 12
			}
		}
		else{
			if(image_angle > 359){
				is_rotating = false
				image_angle = 0
			} else {
				image_angle += 12
			}
		}
	}

//USER INPUT
if(keyPressedUp){
	//INTENT TO JUMP
	DoJump()
}

//SELECT PROPER SPRITE
if(state == STATE.FREE){
	if(on_air) sprite_index = spr_chest_armsup
	else{
		if(xspeed == 0) sprite_index = spr_chest_normal
		else{
			sprite_index = spr_chest_walking
		}
	}
}