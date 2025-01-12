function FSM() {
    // Input
    var move_left = keyboard_check(ord("A"));
    var move_right = keyboard_check(ord("D"));
    var move_left_pressed = keyboard_check_pressed(ord("A"));
    var move_right_pressed = keyboard_check_pressed(ord("D"));

    if (move_left_pressed && !move_right) {
        current_input = -1;
    } else if (move_right_pressed && !move_left) {
        current_input = 1;
    } else if (move_left_pressed && move_right) {
        current_input = -1;
    } else if (move_right_pressed && move_left) {
        current_input = 1;
    } else if (!move_left && !move_right) {
        current_input = 0;
    }

    // Prevent stuck
    if (current_input == -1 && !move_left) {
        current_input = 0;
    }
    if (current_input == 1 && !move_right) {
        current_input = 0;
    }

    // Double-tap detection
    if (currentState == PlayerState.IDLE) {
        if (move_left_pressed) {
            if (double_tap_timer > 0 && double_tap_key == ord("A") && mana > 0) {
                currentState = PlayerState.DASH;
                sprite_index = sprite_dash;
                image_index = 0;
                wobble_timer = 0;
            } else {
                double_tap_key = ord("A");
                double_tap_timer = double_tap_time_limit;
            }
        }
        if (move_right_pressed) {
            if (double_tap_timer > 0 && double_tap_key == ord("D") && mana > 0) {
                currentState = PlayerState.DASH;
                sprite_index = sprite_dash;
                image_index = 0;
                wobble_timer = 0;
            } else {
                double_tap_key = ord("D");
                double_tap_timer = double_tap_time_limit;
            }
        }
    }

    if (double_tap_timer > 0) {
        double_tap_timer--;
    }

    // Stop dash if input direction changes
    if (currentState == PlayerState.DASH) {
        if ((current_input == 1 && double_tap_key == ord("A")) ||
            (current_input == -1 && double_tap_key == ord("D")) ||
            current_input == 0) {
            currentState = PlayerState.IDLE;
            sprite_index = sprite_idle;
            image_index = 0;
            image_speed = 1;
            image_xscale = original_scale_x;
            image_yscale = original_scale_y;
        }
    }

    // FSM Handling
    switch (currentState) {
        case PlayerState.CASTBARRIER:
		    image_xscale = original_scale_x;
            image_yscale = original_scale_y;
            sprite_index = sMagus_CastBarrier;
            image_speed = lerp(0.7, 0.01, 0.002)

            // Wait for animation to finish
            if (image_index >= image_number - 1) {
                currentState = PlayerState.IDLE;
                sprite_index = sprite_idle;
                image_index = 0;
                image_speed = 1;
            }
            break;

        case PlayerState.IDLE:
            image_xscale = original_scale_x;
            image_yscale = original_scale_y;
            sprite_index = sprite_idle;
            image_index = 0;
            image_speed = 1;

            if (current_input == -1) {
                currentState = PlayerState.MOVE_LEFT;
                sprite_index = sprite_move_left;
                image_index = 0;
            } else if (current_input == 1) {
                currentState = PlayerState.MOVE_RIGHT;
                sprite_index = sprite_move_right;
                image_index = 0;
            }
            break;

        case PlayerState.MOVE_LEFT:
            x -= move_speed;
            sprite_index = sprite_move_left;

            if (current_input == 1) {
                currentState = PlayerState.MOVE_RIGHT;
                sprite_index = sprite_move_right;
                image_index = 0;
            } else if (current_input == 0) {
                currentState = PlayerState.IDLE;
                sprite_index = sprite_idle;
                image_index = 0;
            }
            break;

        case PlayerState.MOVE_RIGHT:
            x += move_speed;
            sprite_index = sprite_move_right;

            if (current_input == -1) {
                currentState = PlayerState.MOVE_LEFT;
                sprite_index = sprite_move_left;
                image_index = 0;
            } else if (current_input == 0) {
                currentState = PlayerState.IDLE;
                sprite_index = sprite_idle;
                image_index = 0;
            }
            break;

        case PlayerState.DASH:
		    image_xscale = original_scale_x;
            image_yscale = original_scale_y;
            sprite_index = sprite_dash;
            image_speed = lerp(image_speed, 1.5, 0.1);
            wobble_timer += 1;

			var wobble_x_offset = sin(wobble_timer * 0.5) * 2;
			var wobble_y_offset = cos(wobble_timer * 0.17) * 1.5;

			if (double_tap_key == ord("A")) {
			    x -= dash_speed + wobble_x_offset;
			} else if (double_tap_key == ord("D")) {
			    x += dash_speed + wobble_x_offset;
			}

			image_xscale = clamp(original_scale_x + wobble_x_offset * 0.1, original_scale_x * 0.8, original_scale_x * 1);
			image_yscale = clamp(original_scale_y + wobble_y_offset * 0.05, original_scale_y * 1, original_scale_y * 1.15);


            if (image_index >= 6) {
                image_speed = 0;
            }

            mana -= mana_cost_per_step;
            if (mana <= 0 || current_input == 0) {
                currentState = PlayerState.IDLE;
                sprite_index = sprite_idle;
                image_index = 0;
                image_speed = 1;
                image_xscale = original_scale_x;
                image_yscale = original_scale_y;
            }
            break;
    }

    // Mana regeneration
    if (currentState != PlayerState.DASH) {
        mana = clamp(mana + 1, 0, 100);
    }
}
