if(sprite_index != spr_chest_hadouken){
	mana -= 75
	sprite_index = spr_chest_hadouken
	
} else if(image_index > 2) {
	//DO COMBO
	var variation
	if(sprite_width < 0) variation = -1
	else variation = 1
	with(instance_create_layer(x+sprite_width/2+variation, y, layer, obj_hadouken)){
		owner = other.id
		xspeed *= other.image_xscale
	}
	state = STATE.FREE
	hadouken = 0
}