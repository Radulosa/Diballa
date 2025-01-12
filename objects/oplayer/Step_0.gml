#region Movement

//Movement

	if global.Game_start {

	if x <= oHome.Gui_draw_x * 0.15 HideLeft -= 0.1
	else HideLeft += 0.1
	if HideLeft <= 0 HideLeft = 0
	if HideLeft >= 1 HideLeft = 1

	if x >= oHome.Gui_draw_x * 0.85 HideRight -= 0.1
	else HideRight += 0.1
	if HideRight <= 0 HideRight = 0
	if HideRight >= 1 HideRight = 1

	FSM();
	
		// Check if the player is alive
	if (is_alive) {
	    // If the barrier doesn't exist, create it
	    if (!instance_exists(barrier_instance)) {
	        barrier_instance = instance_create_layer(x, y - 120, "Instances", oBarrier);
	    }

	    // Synchronize the barrier position with the player
	    if (instance_exists(barrier_instance)) {
	        barrier_instance.x = x;
	        barrier_instance.y = y - 120;
	    }
	} else {
	    // Destroy the barrier if the player is not alive
	    if (instance_exists(barrier_instance)) {
	        instance_destroy(barrier_instance);
	        barrier_instance = noone;
	    }
	}

}
#endregion

if (keyboard_check_pressed(vk_space) && array_length(global.power_ups) == 2 && !global.combining) {
    global.combining = true;
	left_x = x - 64;
	right_x = x + 64;
}

if not (global.combining) {
    left_power_up_x = x - 64;
    right_power_up_x = x + 64;
}

if (global.combining) {
    var power_up_1 = global.power_ups[0].instance;
    var power_up_2 = global.power_ups[1].instance;
	
	    // Calculate their center positions
    var combine_x = x;
    var combine_y = y;

    // Move them toward the center (this assumes being called in a step/draw loop)
	
    left_power_up_x = lerp(left_power_up_x, combine_x, 0.1); // Smooth movement
    right_power_up_x = lerp(right_power_up_x, combine_x, 0.1);
	

    // Check for when they are close enough to combine
    if (abs(left_power_up_x - x) < 2 && abs(right_power_up_x - x) < 2) {
        // Determine the result of the combination based on their sprite names
        var combined_type;

        var sprite_name_1 = object_get_name(power_up_1)
        var sprite_name_2 = object_get_name(power_up_2)

		var combined_names = sprite_name_1 + sprite_name_2;

	    // Determine the result of the combination using a switch statement
	    switch (combined_names) {
	        // Same-type combinations
	        case "oAirPUoAirPU":
	            combined_type = "oStormPU"; break;

	        case "oWaterPUoWaterPU":
	            combined_type = "oFloodPU"; break;

	        case "oEarthPUoEarthPU":
	            combined_type = "oQuakePU"; break;

	        case "oFirePUoFirePU":
	            combined_type = "oInfernoPU"; break;

	        // Unique combinations
	        case "oAirPUoWaterPU": 
	        case "oWaterPUoAirPU":
	            combined_type = "oIcePU"; break;

	        case "oAirPUoEarthPU": 
	        case "oEarthPUoAirPU":
	            combined_type = "oDustStormPU"; break;

	        case "oAirPUoFirePU": 
	        case "oFirePUoAirPU":
	            combined_type = "oExplosionPU"; break;

	        case "oWaterPUoEarthPU": 
	        case "oEarthPUoWaterPU":
	            combined_type = "oMudPU"; break;

	        case "oWaterPUoFirePU": 
	        case "oFirePUoWaterPU":
	            combined_type = "oSteamPU"; break;

	        case "oEarthPUoFirePU": 
	        case "oFirePUoEarthPU":
	            combined_type = "oLavaPU"; break;

	        default:
	            combined_type = "unknown_combination"; // Undefined combinations
	    }
		

    // Replace the two power-ups with the combined result
    global.power_ups = [
        {
            sprite: asset_get_index(combined_type), // Assuming a function that maps type to sprite
            instance: instance_create_layer(oBall.x, oBall.y, "Instances", asset_get_index(combined_type)) // Create new combined power-up instance
        }
    ];


        // Reset combination state
        global.combining = false;
    }
}


if global.Game_start {

if Shake {

var _ShakeRange = 4

camera_set_view_pos(view_camera[0],viewX + random_range(-_ShakeRange,_ShakeRange),viewY + random_range(-_ShakeRange,_ShakeRange))
} else {
	camera_set_view_pos(view_camera[0] ,viewX ,viewY)
}}

#endregion

if keyboard_check(vk_right) room_goto_next()