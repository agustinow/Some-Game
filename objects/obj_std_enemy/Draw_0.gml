/// @description Insert description here
// You can write your code in this editor
draw_self()
if(hp < max_hp && hp > 0){
	var hp_percentage
	hp_percentage = (hp / max_hp) * 100
	draw_healthbar(x-abs(sprite_width)/3, y+abs(sprite_height/2)+20, x+abs(sprite_width)/3, y+abs(sprite_height/2)+25, hp_percentage, c_black, c_red, c_green, 0, true, true)
}