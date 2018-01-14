//Check if player is in range
if distance_to_object(obj_player) <= 256 && foundPlayer == false
{
	//Then suicide rush towards the player!
	//But first save the players x and y coordinates when they entered range
	movex = obj_player.x
	movey = obj_player.y
	
	foundPlayer = true;
	
	//Burn out alarm
	alarm[0] = room_speed * 3;
}

if foundPlayer
{
	//Point towards players
	direction = point_direction(x,y,movex,movey);
	
	//Move towards player
	speed = spd;
}

//So the fireball will find player, then move towards a fixed point so that they can be dodged