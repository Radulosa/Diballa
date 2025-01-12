function level_generate(grid_rows, grid_cols, every_other_row, every_other_col, brick_spacing) {
    // Use sprite resource directly for dimensions
    var brick_width = sprite_get_width(sBrick); 
    var brick_height = sprite_get_height(sBrick);

    // Calculate the total number of active columns and rows
    var active_cols = ceil(grid_cols / every_other_col);
    var active_rows = ceil(grid_rows / every_other_row);

    // Calculate total grid dimensions with spacing included
    var total_width = (active_cols * brick_width) + ((active_cols - 1) * brick_spacing);
    var total_height = (active_rows * brick_height) + ((active_rows - 1) * brick_spacing);

    // Calculate starting positions for centering
    var x_start = (room_width - total_width) / 2 + (brick_width / 2);
    var y_start =  50;

    oHome.brick_count = 0;

    // Decide if it's a special level
    oHome.is_special_level = (irandom(100) < oHome.special_chance);

    for (var r = 0; r < grid_rows; r++) {
        // Skip rows based on the every_other_row argument
        if (r % every_other_row != 0) {
            continue;
        }

        for (var c = 0; c < grid_cols; c++) {
            // Skip columns based on the every_other_col argument
            if (c % every_other_col != 0) {
                continue;
            }

            // Calculate brick position with spacing
            var _x = x_start + (c / every_other_col) * (brick_width + brick_spacing);
            var _y = y_start + (r / every_other_row) * (brick_height + brick_spacing);

            // Create the brick
            var brick = instance_create_layer(_x, _y, "Instances", oBrickSimple);
            brick.hp = 1 + (oHome.difficulty / 2); // Scale brick health
            if (oHome.is_special_level) {
                brick.hp *= 2; // Special levels have tougher bricks
            }
            oHome.brick_count++;
        }
    }
}
