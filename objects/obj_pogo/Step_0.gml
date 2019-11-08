/// @description Insert description here
// You can write your code in this editor
if(state != POGO_STATE.PEEING){
	if(collision_rectangle(x - sprite_width * 1.5, y-sprite_height/2, x + sprite_width * 1.5, y + sprite_height / 2, obj_chest, false, false)){
		//CHEST AROUND
		if(collision_rectangle(x - sprite_width / 2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2, obj_chest, false, false)){
			//CHEST OVER, ATTACK
			state = POGO_STATE.PEEING
		} else {
			state = POGO_STATE.WATCHING
		}
	} else {
		state = POGO_STATE.NORMAL
	}
}
switch(state){
	case POGO_STATE.NORMAL: {
		sprite_index = spr_pogo_normal
		break
	}
	case POGO_STATE.WATCHING: {
		sprite_index = spr_pogo_eyes_open
		break
	}
	case POGO_STATE.PEEING: {
		DoPogoAttack()
		break
	}
}