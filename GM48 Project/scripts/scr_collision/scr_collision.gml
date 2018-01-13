if place_meeting(x,y+vsp,obj_wall)
{
	while place_meeting(x,y+vsp,obj_wall)
	{
		vsp = sign(vsp);
	}
}

if !place_meeting(x,y+1,obj_wall)
{
	canParachute = true;
}

if place_meeting(x+hsp,y,obj_wall)
{
	hsp = 0;
}