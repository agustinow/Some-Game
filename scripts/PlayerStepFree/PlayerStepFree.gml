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
			if(xspeed > 0) image_xscale = 1
			else image_xscale = -1
		}
	}
}

if(keyPressedSpace) state = STATE.ATTACK