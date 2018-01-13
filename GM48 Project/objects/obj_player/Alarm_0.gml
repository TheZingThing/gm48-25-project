var i = instance_create_layer(x+(attackDir*128),y,"Instances",obj_meleehitbox);
alarm[1] = room_speed * 0.05;

with i
{
	if place_meeting(x,y,obj_wall)
	{
		obj_player.meleeCollide = true;
		obj_player.attacking = false;
		instance_destroy();
	}
}