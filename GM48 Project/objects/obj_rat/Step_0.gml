if distance_to_object(obj_player) <= 256
{
	var faceDir = sign(obj_player.x - x);
	
	hsp = mvspd * faceDir;
}


x += hsp;