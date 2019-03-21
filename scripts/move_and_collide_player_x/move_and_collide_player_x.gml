///@arg xspeed


with (obj_player){

	if (not place_meeting((x + argument0), y, obj_wall)){
	
		
		
			current_x_speed =  lerp(current_x_speed, argument0, lerp_rate);
			x += current_x_speed;
		
		
		
	}
	

}