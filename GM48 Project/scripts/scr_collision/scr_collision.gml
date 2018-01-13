if place_meeting(x,y+vsp,obj_wall)
{
	while place_meeting(x,y+vsp,obj_wall)
	{
		vsp = sign(vsp);
	}
}

if place_meeting(x+hsp,y,obj_wall)
{
	hsp = 0;
}