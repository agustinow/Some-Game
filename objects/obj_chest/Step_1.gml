/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R"))) room_restart()
if(keyboard_check(ord("V"))) AddEnemy()
if(keyboard_check_pressed(vk_rcontrol) && !global.coop_enabled) SetTwoPlayers()
if(keyboard_check_pressed(ord("P"))){
	with(obj_std_enemy){
		hp = 0
		instance_destroy()
	}
}