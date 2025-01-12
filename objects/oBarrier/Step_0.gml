if (image_index >= 20) {
    image_speed = 0;
	image_alpha = 0.8;
}

if oPlayer.currentState != PlayerState.DASH {
	image_xscale = 1.35;
	image_yscale = 0.7;
}
