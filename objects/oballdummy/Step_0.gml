#region START
// Start 10/10

		x += xSpeed
		y += ySpeed

		Rotation ++

#endregion

#region Collisions

// Collide with Paddle 10/10

if Collision = true {

	if place_meeting(x,y+ySpeed,oPlayer) {
	
			while !place_meeting(x,y+sign(ySpeed),oPlayer) {
			y+= sign(ySpeed)
			}	

		if x > oPlayer.x {
		Angle = (x - oPlayer.x) / (oPlayer.sprite_width/2)
		xSpeed = Angle * AngleVar
	
	
		}

		if x < oPlayer.x {
		Angle = (oPlayer.x - x) / (oPlayer.sprite_width/2)
		xSpeed = Angle * -AngleVar}
		
		ySpeed *= -1
	}
}
	

//Collide with walls 10/10

	
	if place_meeting(x,y+ySpeed,oWallH) {
	while !place_meeting(x,y+sign(ySpeed),oWallH) {
		y+= sign(ySpeed)
	}
ySpeed *= -1
	}


if place_meeting(x+xSpeed,y,oWallV) {
	while !place_meeting(x+sign(xSpeed),y,oWallV) {
		x+= sign(xSpeed)
	}
xSpeed *= -1
	}

#endregion


if x < xprevious  {
	
		instance_create_depth(x,y,1,oBallShadow)
	}
	
if x > xprevious  {
		
		instance_create_depth(x,y,1,oBallShadow)
	}
	
if y < yprevious  {
	
		instance_create_depth(x,y,1,oBallShadow)
	}
	
if y > yprevious  {
		
		instance_create_depth(x,y,1,oBallShadow)
	}




