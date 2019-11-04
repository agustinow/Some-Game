/// @description Step
// You can write your code in this editor

//INMORTALITY TICKS DECREASED
if(inmortality_ticks > 0) inmortality_ticks--

keyDown = keyboard_check(ord("S"))
keyRight = keyboard_check(ord("D"))
keyLeft = keyboard_check(ord("A"))
keyPressedUp = keyboard_check_pressed(ord("W"))
keyPressedSpace = keyboard_check_pressed(vk_space)
keyPressedDown = keyboard_check_direct(ord("S"))


if(keyDown && hadouken == 0){
	hadouken = 1
	alarm_set(1, 10)
}
else if((keyRight || keyLeft) && hadouken == 1){
	hadouken = 2
	alarm_set(1, 10)
}

if(keyPressedSpace && state != STATE.HADOUKEN){
	if(hadouken < 2) state = STATE.ATTACK
	else if(mana > 75)state = STATE.HADOUKEN
}

switch (state){
	case STATE.FREE: PlayerStepFree(); break;
	case STATE.ATTACK: {
		switch (combo){
			case 0: {
				//FIRST ATTACK
				PlayerStepAttack()
				break
			}
			case 1: {
				//SECOND ATTACK
				PlayerStepAttack()
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
		PlayerStepHadouken()
		break;
	}
	default: PlayerStepFree(); break;
}