// Decrement the timer
life_timer -= 1;

if (life_timer <= 0) {
    instance_destroy();  // Destroy after 10 seconds
}

// Update shader time
shader_time += delta_time;  // Smooth shader time increment

if (instance_exists(oBall)) {
    x = oBall.x;
    y = oBall.y;
}
