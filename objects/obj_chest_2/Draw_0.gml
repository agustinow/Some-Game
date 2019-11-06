/// @description Insert description here
// You can write your code in this editor
draw_self()

var hp_percentage
hp_percentage = (hp / max_hp) * 100

//HP BAR
draw_healthbar(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 130, camera_get_view_y(view_camera[0]) + 40, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30, camera_get_view_y(view_camera[0]) + 55, hp_percentage, c_black, c_red, c_green, 1, true, true)

var mana_percentage
mana_percentage = (mana / max_mana) * 100
//MANA BAR
draw_healthbar(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 130, camera_get_view_y(view_camera[0]) + 60, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 30, camera_get_view_y(view_camera[0]) + 75, mana_percentage, c_black, c_fuchsia, c_aqua, 1, true, true)

//NAME
draw_text(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 130, camera_get_view_y(view_camera[0]) + 15, "Chest... idk")