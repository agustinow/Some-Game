if(inmortality_ticks < 1){
	hp -= other.touch_damage
	var side
	if(other.x > x) side = -1
	else if(other.x < x) side = 1
	else side = 0
	xspeed += (other.touch_knockback*side)

	if(hp <= 0) room_restart()
	inmortality_ticks = 30
}