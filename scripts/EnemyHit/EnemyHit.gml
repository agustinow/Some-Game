var _damage = argument0
var _knockback = argument1
if(is_damagable){
	hp -= _damage
	//xspeed += _knockback
	DecomposeVector(_knockback, point_direction(x, y, other.x, other.y), 0)
}

//DISTRIBUTE KNOCKBACK ON X AND Y SPEED
