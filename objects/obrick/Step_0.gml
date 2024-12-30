if global.Game_start {
	
if image_alpha < 1 image_alpha += 0.010
}

if image_index >= 10 {
	image_index = 0
	image_speed = 0
	
	if HP = 1  {
		image_index= 14
		}
		
}

if HP <= 0 instance_destroy()