if place_meeting(x,y+vsp,obj_wall)
{
    while place_meeting(x,y+vsp,obj_wall)
    {
        // If the vertical speed is zero move the player back
        // to the previous y position to prevent an infinite loop from occuring
        if (vsp == 0)
        {
            y = last_y;
        } else {
            vsp = sign(vsp);
        }
    }
}

if place_meeting(x+hsp,y,obj_wall)
{
    hsp = 0;
}

// On a water tile? Start absorbing water
if place_meeting(x+hsp,y+vsp,obj_wet_block)
{
	towelDrying = false;
}

// Get the last y position in case we need it to break a collision loop
last_y = y;