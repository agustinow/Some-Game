if(sprite_index != spr_chest_hadouken2){
	mana -= 75
	sprite_index = spr_chest_hadouken2
	alarm_set(1, -1)
	
} else if(image_index > 2) {
	//DO COMBO
	var variation
	if(sprite_width < 0) variation = -1
	else variation = 1
	with(instance_create_layer(x+sprite_width/2+variation, y, layer, obj_hadouken2)){
		owner = other.id
		xspeed *= other.image_xscale
	}
	state = STATE.FREE
	hadouken = 0
}