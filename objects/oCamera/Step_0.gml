if (!pan_completed) {
    // Update camera position
    var current_x = camera_get_view_x(camera) + offset_x;
    var current_y = camera_get_view_y(camera) + offset_y;

    camera_set_view_pos(camera, current_x, current_y);

    // Check if the camera reached its destination
    if ((offset_x >= 0 && current_x >= end_x) || (offset_x < 0 && current_x <= end_x)) {
        if ((offset_y >= 0 && current_y >= end_y) || (offset_y < 0 && current_y <= end_y)) {
            pan_completed = true; // Mark as done
            pause_timer = room_speed * 3; // 3-second pause
        }
    }
} else if (pause_timer > 0) {
    // Countdown the pause timer
    pause_timer -= 1;

    if (pause_timer <= 0) {
        room_goto(target_room); // Change room
        instance_destroy(); // Destroy this controller
    }
}
