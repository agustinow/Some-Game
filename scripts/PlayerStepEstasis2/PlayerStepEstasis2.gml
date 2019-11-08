if(sprite_index != spr_chest_estasis2){
	alarm_set(3, -1)
	mana -= 100
	sprite_index = spr_chest_estasis2
	
} else if(image_index > 8) {
	//DO COMBO
	with(instance_create_layer(x, y+sprite_height/2+33, layer, obj_estasis2)){
		owner = other.id
	}
	state = STATE.FREE
	estasis = 0
}