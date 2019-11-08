if(keyPressedDown && hadouken == 0){
	hadouken = 1
	alarm_set(1, 10)
}
else if((keyPressedRight || keyPressedLeft) && hadouken == 1){
	hadouken = 2
	alarm_set(1, 10)
	last_skill = STATE.HADOUKEN
}

if((keyPressedRight || keyPressedLeft) && windwall == 0){
	if(keyRight) windwall = 1
	else windwall = -1
	alarm_set(2, 10)
}
else if(keyPressedLeft && windwall == 1){
	windwall = 2
	alarm_set(2, 15)
}
else if(keyPressedRight && windwall == -1){
	windwall = -2
	alarm_set(2, 15)
}
else if(keyPressedRight && windwall == 2){
	windwall = 3
	alarm_set(2, 20)
	last_skill = STATE.WINDWALL
}
else if(keyPressedLeft && windwall == -2){
	windwall = -3
	alarm_set(2, 20)
	last_skill = STATE.WINDWALL
}

if(keyPressedDown && estasis == 0 && on_air){
	estasis = 1
	alarm_set(3, 20)
}
else if(keyPressedDown && estasis == 1 && on_air){
	estasis = 2
	alarm_set(3, 20)
	last_skill = STATE.ESTASIS
}


if(keyPressedSpace && state != STATE.HADOUKEN && state != STATE.WINDWALL && state != STATE.ESTASIS && !is_rotating){
	if(hadouken < 2 && abs(windwall) < 3 && estasis < 2) state = STATE.ATTACK
	else if(mana > 75 && hadouken == 2 && last_skill == STATE.HADOUKEN) state = STATE.HADOUKEN
	else if(mana > 80 && abs(windwall) == 3 && last_skill == STATE.WINDWALL) state = STATE.WINDWALL
	else if(mana >= 100 && estasis == 2 && last_skill == STATE.ESTASIS && on_air) state = STATE.ESTASIS
}
