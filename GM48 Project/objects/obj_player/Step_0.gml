// Get input
scr_inputs();

//Check movement
scr_movement();

//Check if attacking
scr_attack();

//Check collisions
scr_collision();

//Check if the player is using parachute
scr_parachute();

if hp <= 0 && !hit
{
	room_restart();
	hit = true;
	alarm[3] = room_speed * 0.5
}

x += hsp;
y += vsp;