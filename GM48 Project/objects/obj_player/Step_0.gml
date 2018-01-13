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

// Alarm to keep the towel either drying or getting wet
// Use towelDrying true/false
if(alarm_get(5) <= 0) {
	alarm[5] = room_speed * 0.5;
}

if hp <= 0 && !hit
{
	room_restart();
	hit = true;
	alarm[3] = room_speed * 0.5
}

x += hsp;
y += vsp;