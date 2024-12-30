x += xSpeed
y -= ySpeed

if Collision {

	if place_meeting(x,y+ySpeed,oWallV) {
	while !place_meeting(x,y+sign(ySpeed),oWallV) {
		y+= sign(ySpeed)
	}
		image_xscale *= 0.9
		image_yscale *= 0.9
		}
	
	if place_meeting(x+xSpeed,y,oWallV) {
	while !place_meeting(x+sign(xSpeed),y,oWallV) {
		x+= sign(xSpeed)
	}
		xSpeed *= -1
		image_xscale *= -1
		image_xscale *= 0.9
		image_yscale *= 0.9
	}
}

if abs (image_xscale) < 0.25 {instance_destroy()}