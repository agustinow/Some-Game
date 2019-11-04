/// @description Insert description here
// You can write your code in this editor
with(other){
	var side
	if(other.x < x) side = 1
	else if(other.x > x) side = -1
	else side = 0
	EnemyHit(other.damage, (other.knockback*side))
}
if(!penetration) instance_destroy()