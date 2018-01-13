if hit == false
{
	if distance_to_object(obj_player) <= 256
	{
		faceDir = sign(obj_player.x - x);
		
		hsp = mvspd * faceDir;
	
		idle = false;
	}

	if place_meeting(x+hsp,y,obj_wall)
	{
		hsp = 0;
	}
	
	if count <= 0 && idle = true
	{
		faceDir = sign(startx - x);
	
		hsp = mvspd * faceDir;
	}
}

if hit == true
{
	hsp -= 0.1;
	
	if hsp <= 0
	{
		hit = false;
	}
}

if hp <= 0
	instance_destroy();

prevx = x;

x += hsp;