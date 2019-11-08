if(sprite_index != spr_chest_windwall2){
	alarm_set(2, -1)
	mana -= 80
	sprite_index = spr_chest_windwall2
	
} else if(image_index > 2) {
	//DO COMBO
	if(windwall == -3) variation = -3
	else variation = 3
	image_xscale = sign(variation)
	with(instance_create_layer(x+sprite_width/2+variation, y, layer, obj_windwall2)){
		owner = other.id
		xspeed *= sign(other.variation)
		image_xscale = sign(other.variation)
	}
	state = STATE.FREE
	windwall = 0
}