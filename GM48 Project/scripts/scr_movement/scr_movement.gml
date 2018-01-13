hsp = mvspd * (key_right - key_left);

if place_meeting(x,y+1,obj_wall)
{
	vsp = -jumpHeight * key_jump;
	canParachute = false;
}

if key_jump
{
	jumping = true;
}

if jumping
{
	canParachute = true;
}

if !place_meeting(x,y+1,obj_wall)
{
	vsp += grav;
}