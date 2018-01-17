if place_meeting(x,y+1,obj_wall) && (key_left || key_right)
{
	if (last_xmove == 1) sprite_index = r_spr_player_walk_right;
	if (last_xmove == -1) sprite_index = r_spr_player_walk_left;
}

if place_meeting(x,y+1,obj_wall) && !(key_left || key_right)
{
	if (last_xmove == 1) sprite_index = r_spr_player_idle_right;
	if (last_xmove == -1) sprite_index = r_spr_player_idle_left;
}

if !place_meeting(x,y+1,obj_wall) && !key_parachute
{
	if (last_xmove == 1) sprite_index = r_spr_jump_right;
	if (last_xmove == -1) sprite_index = r_spr_jump_left;
}

if !place_meeting(x,y+1,obj_wall) && key_parachute
{
	if (last_xmove == 1) sprite_index = r_spr_player_fly_right;
	if (last_xmove == -1) sprite_index = r_spr_player_fly_left;
}