/// @description Insert description here
// You can write your code in this editor

//detect return to start

if(keyboard_check(vk_enter))
{
	audio_stop_sound(title_loop);
	room_goto(rm_lvl1);
}