//Looks like we got hit :o. It will take a lot of water and hits to extinguish the us.
//Getting hit removes player's "wetness"

if hit == false
{
	hp -= 1;
	obj_player.towelWetness -= 20;
	hit = true;
	
	//Add hit delay
	alarm[1] = room_speed * 0.2
}