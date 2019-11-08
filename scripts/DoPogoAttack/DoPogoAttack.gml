if(sprite_index != spr_pogo_piss){
	//START ATTACK
	sprite_index = spr_pogo_piss
}
else if(image_index > 17){
	with(instance_create_layer(x, y+sprite_height/2 - 1, layer, obj_pee)){
		image_xscale = 4
	}
	image_index = 0
	state = POGO_STATE.NORMAL
}