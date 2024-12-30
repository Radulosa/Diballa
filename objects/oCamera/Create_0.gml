camera = view_camera[0]; // Get the camera
dir_radians = degtorad(_direction); // Convert direction to radians

// Calculate pan offsets
offset_x = cos(dir_radians) * speed;
offset_y = -sin(dir_radians) * speed;

// Store starting position
start_x = camera_get_view_x(camera);
start_y = camera_get_view_y(camera);

// Calculate target position
if (_direction == 0 || _direction == 180) {
    end_x = (_direction == 0) ? room_width - camera_get_view_width(camera) : 0;
    end_y = start_y; // No vertical movement
} else if (_direction == 90 || _direction == 270) {
    end_x = start_x; // No horizontal movement
    end_y = (_direction == 90) ? 0 : room_height - camera_get_view_height(camera);
}

pan_completed = false;
pause_timer = 0;
