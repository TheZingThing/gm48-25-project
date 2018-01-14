//Check if player is in range
if distance_to_object(obj_player) <= 256
{
	//Then suicide rush towards the player!
	//But first save the players x and y coordinates when they entered range
	movex = obj_player.x
	movey = obj_player.y
	
	foundPlayer = true;
	move_towards_point(movex,movey,spd);
}

//So the fireball will find player, then move towards a fixed point so that they can be dodged