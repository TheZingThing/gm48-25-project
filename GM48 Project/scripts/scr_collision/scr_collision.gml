y_collided = false;
 
{
    while place_meeting(x,y+vsp,obj_wall)
    {
        // If the vertical speed is zero move the player back
        // to the previous y position to prevent an infinite loop from occuring
        if (vsp == 0)
        {
            y = last_y;
        } else {
			// Mark if this is the first collision and round so any loops are corrected using a whole number
			if (y_collided == false)
			{
				y = round(last_y+vsp);
	            vsp = sign(vsp);
				y_collided = true;
			} else {
				//check our last y position and bump the character back.
				if (last_y > y)
				{
					y = round(last_y+vsp) + 1;
				} else {
					y = round(last_y+vsp) - 1;
				}
				vsp = sign(vsp);
				last_y = y;
			}
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
