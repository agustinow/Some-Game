/// @description Insert description here
// You can write your code in this editor
draw_self()

var hp_percentage
hp_percentage = (hp / max_hp) * 100
//HP BAR
draw_healthbar(camera_get_view_x(view_camera[0]) + 30, camera_get_view_y(view_camera[0]) + 20, camera_get_view_x(view_camera[0]) + 130, camera_get_view_y(view_camera[0]) + 35, hp_percentage, c_black, c_red, c_green, 0, true, true)

var mana_percentage
mana_percentage = (mana / max_mana) * 100
//MANA BAR
draw_healthbar(camera_get_view_x(view_camera[0]) + 30, camera_get_view_y(view_camera[0]) + 40, camera_get_view_x(view_camera[0]) + 130, camera_get_view_y(view_camera[0]) + 55, mana, c_black, c_fuchsia, c_aqua, 0, true, true)