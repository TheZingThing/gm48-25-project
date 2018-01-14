//Check for no fireballs and that the delay still isn't on
if !instance_exists(obj_fireball) && alarm <= 0
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