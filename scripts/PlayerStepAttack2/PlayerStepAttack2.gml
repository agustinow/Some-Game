//ATTACK START

if(sprite_index != spr_chest_atk_normal2){
	alarm_set(0, 30)
	combo += 1
	sprite_index = spr_chest_atk_normal2
	image_index = 0
	var variation
	if(sprite_width < 0) variation = -1
	else variation = 1
	with(instance_create_layer(x+sprite_width/2+variation, y, layer, obj_attack2)){
		owner = other.id
		other.weapon_id = id
	}
} else {
	if(!instance_exists(weapon_id)){
		state = STATE.FREE;
	}
}

PlayerStepFree2()

//CHECK HITS
//mask_index

//ATTACK END