/// @description Insert description here
// You can write your code in this editor

/// @description Step
// You can write your code in this editor

//INMORTALITY TICKS DECREASED
if(inmortality_ticks > 0) inmortality_ticks--

keyDown = keyboard_check(vk_down)
keyRight = keyboard_check(vk_right)
keyPressedRight = keyboard_check_pressed(vk_right)
keyPressedLeft = keyboard_check_pressed(vk_left)
keyLeft = keyboard_check(vk_left)
keyPressedUp = keyboard_check_pressed(vk_up)
keyPressedSpace = keyboard_check_pressed(vk_rcontrol)
keyPressedDown = keyboard_check_pressed(vk_down)


if(keyPressedDown && hadouken == 0){
	hadouken = 1
	alarm_set(1, 10)
}
else if((keyPressedRight || keyPressedLeft) && hadouken == 1){
	hadouken = 2
	alarm_set(1, 10)
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
}
else if(keyPressedLeft && windwall == -2){
	windwall = -3
	alarm_set(2, 20)
}

if(keyPressedSpace && state != STATE.HADOUKEN && state != STATE.WINDWALL && !is_rotating){
	if(hadouken < 2 && abs(windwall) < 3) state = STATE.ATTACK
	else if(mana > 75 && hadouken == 2) state = STATE.HADOUKEN
	else if(mana > 80 && abs(windwall) == 3) state = STATE.WINDWALL
}

switch (state){
	case STATE.FREE: PlayerStepFree2(); break;
	case STATE.ATTACK: {
		switch (combo){
			case 0: {
				//FIRST ATTACK
				PlayerStepAttack2()
				break
			}
			case 1: {
				//SECOND ATTACK
				PlayerStepAttack2()
				break
			}
			case 2: {
				//THIRD ATTACK

				break
			}
			default: {
				//BUG CATCH
				break
			}
		}
		break
	}
	case STATE.HADOUKEN: {
		PlayerStepHadouken2()
		break;
	}
	case STATE.WINDWALL: {
		PlayerStepWindwall2()
		break;
	}
	default: PlayerStepFree2(); break;
}