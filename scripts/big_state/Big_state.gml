function Big_state() {
	
	image_speed = 0.5
	
	//Don't get stuck in wall
	
	if place_meeting(bbox_right-1,y,oWallV) {
		x -= 1.5
		}
    
	if place_meeting(bbox_left+1,y,oWallV) {
		x += 1.5
		}
	

	if Enlarge {
	audio_play_sound(aEnlarge,2,false)
	Enlarge = false
	}

	if image_index > 16 {
	currentState = states.Large
	}



}
