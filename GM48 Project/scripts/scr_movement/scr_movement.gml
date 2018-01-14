hsp = mvspd * (key_right - key_left);

if place_meeting(x,y+1,obj_wall)
{
	vsp = -jumpHeight * key_jump;
	alarm[4] = 0;
}

if key_jump
	alarm[4] = room_speed * 0.15;

if !place_meeting(x,y+1,obj_wall)
{
	vsp += grav;
}