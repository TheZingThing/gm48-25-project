//Check if hit
if hit == false
{
	//Check if player is in range
	if distance_to_object(obj_player) <= 256
	{
		faceDir = sign(obj_player.x - x);
		
		hsp = mvspd * faceDir;
	
		idle = false;
	}
	
	//Collision checks
	if !position_meeting(x-1,y+64,obj_wall) && sign(obj_player.x - x) == -1
	{
		hsp = 0;
	}
	
	if !position_meeting(x+64,y+64,obj_wall) && sign(obj_player.x - x) == 1
	{
		hsp = 0;
	}
	
	if place_meeting(x+hsp,y,obj_wall)
	{
		hsp = 0;
	}
	
	//Count for reseting position
	if count <= 0 && idle = true
	{
		faceDir = sign(startx - x);
	
		hsp = mvspd * faceDir;
	}
}

//Knockback effect
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

if (faceDir == 1) sprite_index = r_spr_rat_right;
if (faceDir == -1) sprite_index = r_spr_rat_left;

prevx = x;

x += hsp;