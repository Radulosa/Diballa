oHome.Score += 10

if (place_meeting(x, y, other)) {
    var power_up = instance_place(x, y, other);
    
    if (array_length(global.power_ups) < MAX_POWERUPS) {
            array_push(global.power_ups, {
            sprite: power_up.sprite_index,
			instance: power_up.object_index
        });

        instance_destroy(other);

    } else {
        instance_destroy(other)
    }
}