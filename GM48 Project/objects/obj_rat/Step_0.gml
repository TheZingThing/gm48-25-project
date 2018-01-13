if distance_to_object(obj_player) <= 256
{
	faceDir = sign(obj_player.x - x);
	
	hsp = mvspd * faceDir;
}

if place_meeting(x+hsp,y,obj_wall)
{
	hsp = 0;
}

if count <= 0
{
	faceDir = sign(startx - x);
	
	hsp = mvspd * faceDir;
}

prevx = x;

x += hsp;