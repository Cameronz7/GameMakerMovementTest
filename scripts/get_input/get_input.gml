///@arg allowed
var allowed = argument0;
if (allowed == 1){
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	rolling = keyboard_check_pressed(vk_space);
	attacking = keyboard_check_pressed(vk_lcontrol);
	activate_ult = keyboard_check(ord("X"));
	if ((right) and (left)){
		left = false;
	}

}