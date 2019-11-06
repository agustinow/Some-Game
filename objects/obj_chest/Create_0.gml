/// @description Insert description here
// You can write your code in this editor
state = STATE.FREE
global.coop_enabled = false


halfViewWidth = camera_get_view_width(view_camera[0]) / 2
halfViewHeight = camera_get_view_height(view_camera[0]) / 2

enum STATE{
	FREE,
	ATTACK,
	COMBO,
	HADOUKEN,
	WINDWALL
}