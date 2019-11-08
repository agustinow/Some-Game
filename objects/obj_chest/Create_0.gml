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
	WINDWALL,
	//NEW STUFF
	//CREATE A BLOCK?
	//FALLING RAPIDLY?
	//PARRY?
	//PROTECTING ON CHEST?
	//MAKING ITSELF BIGGER?
	//DAMAGE AND KNOCKBACK AROUND?
	//SHOOT DA WHOOP?
	//EATING ENEMY???
	
	ESTASIS,
	FALLING_ATTACK	
}