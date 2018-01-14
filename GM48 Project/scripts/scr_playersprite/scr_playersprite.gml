if place_meeting(x,y+1,obj_wall) && (key_left || key_right)
{
	sprite_index = r_spr_player_walk_right;
	image_xscale = last_xmove;
}

if place_meeting(x,y+1,obj_wall) && !(key_left || key_right)
{
	sprite_index = r_spr_player_idle;
	image_xscale = last_xmove;
}

if !place_meeting(x,y+1,obj_wall) && !key_parachute
{
	sprite_index = r_spr_jump;
	image_xscale = last_xmove;
}

if !place_meeting(x,y+1,obj_wall) && key_parachute && canParachute
{
	sprite_index = r_spr_player_fly;
	image_xscale = last_xmove;
}