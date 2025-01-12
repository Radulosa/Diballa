if (oHome.gold >= card_cost) {
    oHome.gold -= card_cost;
    // Apply card effect based on card type
    switch (card_name) {
        case "Attack Boost": 
            // Example effect
            break;
        case "Shield Boost":
            // Example effect
            break;
        case "Gold Bonus":
            oHome.gold += 50 + irandom_range(10,20);
			
            break;
    }
    next_level();
} else {
    show_message("Not enough gold!");
}
