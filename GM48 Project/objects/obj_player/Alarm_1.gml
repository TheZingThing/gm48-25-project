if meleeCollide == false
{
	var i = instance_create_layer(x+(attackDir*192),y,"Instances",obj_meleehitbox);
	alarm[2] = 5;
	
	with i
	{
		if place_meeting(x,y,obj_wall)
			obj_player.meleeCollide = true;
	}
}
else
{
	attacking = false;
	instance_destroy(obj_meleehitbox);
}