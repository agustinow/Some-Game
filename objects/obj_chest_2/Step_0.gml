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
keyPressedSpace = keyboard_check_pressed(vk_rshift)
keyPressedDown = keyboard_check_pressed(vk_down)

PlayerStepCheckCombos()

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
				PlayerStepAttack2()
				break
			}
			default: {
				//BUG CATCH
				PlayerStepAttack2()
				break
			}
		}
		break
	}
	case STATE.HADOUKEN: {
		PlayerStepHadouken2()
		break
	}
	case STATE.WINDWALL: {
		PlayerStepWindwall2()
		break
	}
	case STATE.ESTASIS: {
		PlayerStepEstasis2()
		break
	}
	default: PlayerStepFree2(); break;
}