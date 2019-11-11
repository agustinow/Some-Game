/// @description Insert description here
// You can write your code in this editor
if(hp <= 0){
	instance_create_layer(x - abs(sprite_width)/2, y, layer, obj_little_enemy)
	instance_create_layer(x + abs(sprite_width)/2, y, layer, obj_little_enemy)
}