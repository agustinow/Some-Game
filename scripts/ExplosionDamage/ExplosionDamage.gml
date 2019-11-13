var hits = ds_list_create()
effect_create_above(ef_explosion, x, y, explosion_range, c_red)

var num = collision_circle_list(x, y, explosion_range, obj_damagable_entity_parent, false, true, hits, false)
if(num > 0){
	for(var i = 0; i < num; i++){
		with(hits[| i ]){
			if(object_is_ancestor(object_index, obj_chest)){
				TakeDamage()
			} else EnemyHit(other.touch_damage, other.touch_knockback)
		}
	}
}