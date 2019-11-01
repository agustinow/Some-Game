/// @description Insert description here
// You can write your code in this editor
image_xscale = owner.image_xscale
if(instance_exists(owner)){
	x = owner.x+owner.sprite_width/2
	y = owner.y
	var hit_by_attack_now = ds_list_create()
	var hits = instance_place_list(x, y, obj_enemy_parent, hit_by_attack_now, false)
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			//Check if instance has NOT been hit
			var hitID =	hit_by_attack_now[| i]
			if(ds_list_find_index(hit_by_attack, hitID) == -1){
				ds_list_add(hit_by_attack, hitID)
				with(hitID){
					EnemyHit(other.damage, other.knockback*other.image_xscale)
				}
			}
		}
	}
}
else instance_destroy()