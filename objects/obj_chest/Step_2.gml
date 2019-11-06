/// @description Insert description here
// You can write your code in this editor

mana = min(max_mana, mana+mana_regen)

#region MOVE THE VIEW



if(global.coop_enabled) camera_set_view_pos(view_camera[0], (obj_chest_2.x + x)/2 - halfViewWidth, (obj_chest_2.y + y)/2 - halfViewHeight)
else camera_set_view_pos(view_camera[0], x-halfViewWidth, y-halfViewHeight)


#endregion