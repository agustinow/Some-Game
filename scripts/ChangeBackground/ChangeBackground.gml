var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id)
var current = layer_background_get_sprite(back_id)

if(!global.is_changing_background){
	switch(argument0){
		case 0: {
			//RAINBOW
			if(current == spr_background_white){
				global.next_background = 2
				global.frames_to_wait = 1
				global.is_changing_background = true
			}
			break
		}
		case 1: {
			//WHITE
			if(current == spr_background_rainbow){
				global.next_background = 3
				global.frames_to_wait = 20
				global.is_changing_background = true
			}
			break
		}
	}
}