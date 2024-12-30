// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_cards(){
	
	var card_count = 3;
	var card_width = 100;
	var card_spacing = 20;
	var x_start = (room_width - ((card_width + card_spacing) * card_count - card_spacing)) / 2;
	var y_position = room_height / 2;

	for (var i = 0; i < card_count; i++) {
	    var card = instance_create_layer(x_start + i * (card_width + card_spacing), y_position, "Cards", oCard);
	    card.type = oHome.cards[i mod array_length(oHome.cards)];
	    card.cost = 10 * oHome.difficulty; // Example cost scaling
	}

	// Create a skip button
	instance_create_layer(room_width / 2, y_position + 100, "UI", oButtonSkip);


}