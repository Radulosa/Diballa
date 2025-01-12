draw_self()

draw_text(900,830,string(image_index))
draw_text(900,1030,string(sprite_index))
draw_text(900,1050,string(currentState))

if global.combining {
	
	var power_up_1 = global.power_ups[0].sprite;
    var power_up_2 = global.power_ups[1].sprite;
	
    // Calculate their center positions
    var combine_x = x;
    var combine_y = y;

    // Draw them as they move towards the center
    draw_sprite(power_up_1, 0, left_power_up_x, combine_y);
    draw_sprite(power_up_2, 0, right_power_up_x, combine_y);
	
	
} else {
	for (var i = 0; i < array_length(global.power_ups); i++) {
    // Calculate positions for the power-ups
    var display_x, display_y;

    if (i == 0) {
        // First power-up displayed to the left
        display_x = x - 32;
        display_y = y;
    } else if (i == 1) {
        // Second power-up displayed to the right
        display_x = x + 32;
        display_y = y;
    }
	
	var power_up_sprite = global.power_ups[i].sprite;
    if (sprite_exists(power_up_sprite)) {
        draw_sprite(power_up_sprite, 0, display_x, display_y);
	}
	}
}