// Enable the shader
shader_set(shFireRing);

// Pass the time uniform to the shader
shader_set_uniform_f(shader_get_uniform(shFireRing, "u_time"), shader_time);

// Draw the fire ring
draw_self();

// Reset the shader
shader_reset();
