var str = argument0
var angle = argument1
var mode = argument2
//MODE IS 0 FOR X AND Y, 1 FOR X AND 2 FOR Y

//FOR EXAMPLE, (30, 315) would apply a force on +x and +y
var xstr = 0
var ystr = 0

switch(mode){
	case 0: {
		if(angle < 1){
			//RIGHT ONLY
			xstr = -str
		} else if(angle < 89){
			//RIGHT-UP
			xstr = -(dsin(90-angle)*str)
			ystr = dcos(90-angle)*str
	
		} else if(angle < 91){
			//UP
			ystr = str
		} else if(angle < 179){
			//UP LEFT
			xstr = dcos(180-angle)*str
			ystr = dsin(180-angle)*str
		} else if(angle < 181){
			//LEFT
			xstr = str
		} else if(angle < 269){
			//LEFT DOWN
			xstr = dsin(270-angle)*str
			ystr = -(dcos(270-angle)*str)
		} else if(angle < 271){
			//DOWN
			ystr = -str
		} else if(angle < 359){
			//DOWN RIGHT
			xstr = -(dcos(360-angle)*str)
			ystr = -(dsin(360-angle)*str)
		} else if(angle < 361){
			xstr = -str
		}
		break
	}
	case 1:{
		if(angle = 1) xstr = str
		else xstr = -str
		break
	}
	case 2:{
		if(angle = 1) ystr = str
		else ystr = -str
		break
	}
}
xspeed += xstr
yspeed += ystr