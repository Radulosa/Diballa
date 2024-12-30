draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, Rotation, image_blend, image_alpha)

if x != xprevious {
	
	draw_sprite_ext(sprite_index, image_index, x+xSpeed+2, y+ySpeed+2, image_xscale, image_yscale, Rotation, c_white, 0.7)
}
