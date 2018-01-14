//Check for no fireballs and that the delay still isn't on and that the player is in a suitable range
if !instance_exists(obj_fireball) && alarm <= 0 && distance_to_object(obj_player) <= 384
{
	//Otherwise, spawn them in
	//Values will need adjustment, it's supposed to be in a triangular formation
	//Also spawn animation... yeah, it's a little rough
	instance_create_layer(x-16,y-128,"Instances",obj_fireball);
	instance_create_layer(x+56,y-192,"instances",obj_fireball);
	instance_create_layer(x+128,y-128,"Instances",obj_fireball);
	
	//Add delay
	alarm[0] = room_speed * 5;
}

//Die on no hp
if hp <= 0
{
	instance_destroy();
}

//Check for if there is no hit delay
if alarm[1] <= 0
{
	hit = false;
}