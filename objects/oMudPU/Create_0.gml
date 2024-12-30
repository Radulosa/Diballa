image_xscale = 0.2
image_yscale = 0.2


if instance_exists(self) {
	
Pick = irandom_range(0,1)	

if Pick > 0.2 {
oPlayer.PUx = x + irandom_range(sprite_width/2,sprite_width/2 + 100)
oPlayer.PUy = y + irandom_range(sprite_height/2,sprite_height/2 + 100)
} else {

oPlayer.PUx = x - irandom_range(sprite_width/2,sprite_width/2 + 100)
oPlayer.PUy = y - irandom_range(sprite_height/2,sprite_height/2 + 100)
}
}
