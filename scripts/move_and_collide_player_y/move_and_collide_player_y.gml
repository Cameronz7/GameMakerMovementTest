///@arg yspeed


with (obj_player){


	if not place_meeting(x, (y + argument0), obj_wall){
	
		
			current_y_speed =  lerp(current_y_speed, argument0, lerp_rate);
			y += current_y_speed;
		
		
		
	}
}