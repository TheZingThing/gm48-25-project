if !attacking && key_attack
{
	attacking = true;
	attackDir = last_xmove;
	instance_create_layer(x+(attackDir*64),y,"Instances",obj_meleehitbox);
	alarm[0] = room_speed * 0.05;
}