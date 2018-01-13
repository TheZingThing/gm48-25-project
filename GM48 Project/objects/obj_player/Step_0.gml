// Get input

scr_inputs();

//Check movement

hsp = mvspd * (key_right - key_left);

if place_meeting(x,y+1,obj_wall)
{
	vsp = -jumpHeight * key_jump;
}


if !place_meeting(x,y+1,obj_wall)
{
	vsp += grav;
}

scr_collision();
	
x += hsp;
y += vsp;