function show_cards(cards) {
    var card_spacing = 20; // Space between cards
    var x_center = room_width / 2;
    var y_center = room_height / 2;

    var total_width = 0;

    // Calculate total width based on sprite dimensions
    for (var i = 0; i < array_length(cards); i++) {
        total_width += sprite_get_width(cards[i].sprite) + card_spacing;
    }
    total_width -= card_spacing; // Remove extra spacing after the last card
    var x_start = x_center - (total_width / 2);

    for (var i = 0; i < array_length(cards); i++) {
        // Calculate card position
        var sprite_w = sprite_get_width(cards[i].sprite);
        var sprite_h = sprite_get_height(cards[i].sprite);

        var card_x = x_start + (sprite_w / 2);
        var card_y = y_center;

        // Create an oCard instance
        var card_instance = instance_create_layer(card_x, card_y, "Instances", oCard);

        // Pass card data to the instance
        card_instance.sprite_index = cards[i].sprite; // Assign sprite
        card_instance.card_name = cards[i].name;      // Assign name
        card_instance.card_cost = cards[i].cost;      // Assign cost

        // Move to the next card position
        x_start += sprite_w + card_spacing;
    }

    // Create the skip button
    var skip_x = x_center;
    var skip_y = y_center + (sprite_get_height(cards[0].sprite) / 2) + 50;
    instance_create_layer(skip_x, skip_y, "Instances", oButtonSkip);
}
