// Get input

scr_inputs();

//Check movement

hsp = mvspd * (key_right - key_left);

if position_meeting(x,y,obj_wall)
{
	vsp = -jumpHeight * key_jump;
}


if !position_meeting(x,y,obj_wall)
{
	vsp += grav;
}

	
y += vsp;
x += hsp;