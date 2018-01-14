if !hit
{
	obj_player.hp -= 1;
	hit = true;
	alarm[0] = room_speed * 2.5;
}