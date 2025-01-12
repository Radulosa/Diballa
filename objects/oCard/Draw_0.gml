// oCard Draw Event
draw_self(); // Draw the sprite

var text_y_offset = sprite_get_height(sprite_index) / 2 + 10;

// Draw card name
draw_set_color(c_black);
draw_text(x, y - text_y_offset - 20, card_name);

// Draw card cost
draw_text(x, y + text_y_offset, "Cost: " + string(card_cost));
