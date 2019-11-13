/// @description Step
// You can write your code in this editor

//INMORTALITY TICKS DECREASED
if(inmortality_ticks > 0) inmortality_ticks--

keyDown = keyboard_check(ord("S"))
keyRight = keyboard_check(ord("D"))
keyPressedRight = keyboard_check_pressed(ord("D"))
keyPressedLeft = keyboard_check_pressed(ord("A"))
keyLeft = keyboard_check(ord("A"))
keyPressedUp = keyboard_check_pressed(ord("W"))
keyPressedSpace = keyboard_check_pressed(vk_space)
keyPressedDown = keyboard_check_pressed(ord("S"))
keyPressedQ = keyboard_check_pressed(ord("Q"))

PlayerStepCheckCombos()

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
				PlayerStepAttack()
				break
			}
			default: {
				//BUG CATCH
				PlayerStepAttack()
				break
			}
		}
		break
	}
	case STATE.HADOUKEN: {
		PlayerStepHadouken()
		break
	}
	case STATE.WINDWALL: {
		PlayerStepWindwall()
		break
	}
	case STATE.ESTASIS: {
		PlayerStepEstasis()
		break
	}
	default: PlayerStepFree(); break;
}