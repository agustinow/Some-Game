
if(global.is_changing_background){
	lay_id = layer_get_id("Background")
	back_id = layer_background_get_id(lay_id)
	var salamin = layer_background_get_index(back_id)
	
		if(salamin mod global.frames_to_wait == 0){
			current = layer_background_get_sprite(back_id)
			switch(global.next_background){
				case 0:{
					if(current == spr_background_startrainbow){
						layer_background_sprite(other.back_id, spr_background_rainbow)
						global.is_changing_background = false
						global.frames_to_wait = -1
					}
					break
				}
				case 1:{
					if(current == spr_background_endrainbow){
						layer_background_sprite(other.back_id, spr_background_white)
						global.is_changing_background = false
						global.frames_to_wait = -1
					}
					break
				}
				case 2:{
					if(current == spr_background_white){
						layer_background_sprite(other.back_id, spr_background_startrainbow)
						global.next_background = 0
						global.frames_to_wait = 21
					}
					break
				}
				case 3:{
					if(current == spr_background_rainbow){
						layer_background_sprite(other.back_id, spr_background_endrainbow)
						global.next_background = 1
						global.frames_to_wait = 20
					}
					break
				}
			}
		}
}