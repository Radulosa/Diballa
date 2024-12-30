if (oHome.gold >= cost) {
    oHome.gold -= cost;
    // Apply card effect based on card type
    switch (type) {
        case "Attack Boost": 
            // Example effect
            break;
        case "Shield Boost":
            // Example effect
            break;
        case "Gold Bonus":
            oHome.gold += 50;
            break;
    }
    next_level();
} else {
    show_message("Not enough gold!");
}
