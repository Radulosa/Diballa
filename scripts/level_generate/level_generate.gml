// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level_generate() {

	var rows = oHome.brick_rows + oHome.difficulty;
	var cols = oHome.brick_columns;
	var brick_width = sprite_get_width(sBrick)
	var brick_height = sprite_get_height(sBrick)
	var x_start = brick_width / 2;
	var y_start = 50; // Starting position of bricks

	oHome.brick_count = 0;

	// Decide if it's a special level
	oHome.is_special_level = (irandom(100) < oHome.special_chance);

	for (var r = 0; r < rows; r++) {
	    for (var c = 0; c < cols; c++) {
	        var brick = instance_create_layer(x_start + c * brick_width, y_start + r * brick_height, "Instances", oBrickSimple);
	        brick.hp = 1 + (oHome.difficulty / 2); // Scale brick health
	        if (oHome.is_special_level) {
	            brick.hp *= 2; // Special levels have tougher bricks
	        }
	        oHome.brick_count++;
	    }
	}
}