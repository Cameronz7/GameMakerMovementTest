switch (state){
	case "move":
		#region Move State
		with(obj_input){
				allow_move = 1;
			}
		single_direction = false;	
		if (input.right and !input.left and !input.up and !input.down){
			single_direction = true;
		}
		if (!input.right and input.left and !input.up and !input.down){
			single_direction = true;
		}
		if (!input.right and !input.left and input.up and !input.down){
			single_direction = true;
		}
		if (!input.right and !input.left and !input.up and input.down){
			single_direction = true;
		}
		if (single_direction == false){
			run_speed = sqrt(18);
		}else{
			run_speed = 6;
		}
		if (input.right){
			move_and_collide_player_x(run_speed);
			image_xscale = 1;
			sprite_index = sprite_run;
			image_speed = 0.6;
		}
		if (input.left){
			move_and_collide_player_x(-run_speed);
			image_xscale = -1;
			sprite_index = sprite_run;
			image_speed = 0.6;
		}
		if (input.up){
			move_and_collide_player_y(-run_speed);
			sprite_index = sprite_run;
			image_speed = 0.6;
		}
		if (input.down){
			move_and_collide_player_y(run_speed);
			sprite_index = sprite_run;
			image_speed = 0.6;
		}
		if (not input.right and not input.left and not input.up and not input.down){
			sprite_index = sprite_idle;
			image_speed = 0.4;
			move_and_collide_player_x(0);
			move_and_collide_player_y(0);
		}
		#endregion
}

total_speed = sqrt(sqr(current_x_speed) + sqr(current_y_speed));
show_debug_message("x speed = " + string(current_x_speed) + " y speed = " + string(current_y_speed) + " single direction = " + string(single_direction) + " total speed" + string(total_speed));
