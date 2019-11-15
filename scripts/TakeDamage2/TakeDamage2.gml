if(inmortality_ticks < 1){
	hp -= other.touch_damage
	/*
	var side
	if(other.x > x) side = -1
	else if(other.x < x) side = 1
	else side = 0
	xspeed += (other.touch_knockback*side)
	yspeed -= max(other.touch_knockback/3, 4)
	*/
	//OLD KNOCKBACK VS NEW 2D KNOCKBACK
	DecomposeVector(other.touch_knockback, point_direction(x, y, other.x, other.y), 0)

	if(hp <= 0) room_restart()
	inmortality_ticks = 30
	
	instance_create_layer(x, y, layer, obj_blood)
}