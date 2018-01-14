if key_parachute && canParachute && !floating
{
	vsp = 2;
		
	if vsp >= 2
		vsp = 2;
		
		grav = 0;
			
}
else
	grav = 1;
	
if place_meeting(x,y,obj_airway) && key_parachute && canParachute
{
	floating = true;
	vsp -= 0.2;
	
	if vsp <= -10
		vsp = -10;
	
	grav = 0;
}
else
{
	floating = false;
	grav = 1;
}