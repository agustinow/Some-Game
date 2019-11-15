/// @description Insert description here
// You can write your code in this editor
	if(ds_list_find_index(attacked, other.id) == -1){
		if(other.id != owner){
			with(other){
				DecomposeVector(other.knockback, sign(other.xspeed), 1)
			}
			ds_list_add(attacked, other.id)
		}
	}