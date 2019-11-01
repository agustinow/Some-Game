//ATTACK START

if(sprite_index != spr_chest_atk_normal){
	sprite_index = spr_chest_atk_normal
	image_index = 0
	var variation
	if(sprite_width < 0) variation = -1
	else variation = 1
	with(instance_create_layer(x+sprite_width/2+variation, y, layer, obj_attack)){
		owner = other.id
		other.weapon_id = id
	}
} else {
	if(!instance_exists(weapon_id)) state = STATE.FREE;
}

PlayerStepFree()

//CHECK HITS
//mask_index

//ATTACK END