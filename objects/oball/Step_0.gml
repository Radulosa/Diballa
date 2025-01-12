#region START
// Start 10/10
		x += xSpeed
		y += ySpeed
		
		currentxSpeed = xSpeed
		currentySpeed = ySpeed

if go == true {
	
x = oPlayer.x
y = oPlayer.y - 180

if global.Game_start {
	
	if keyboard_check_released(vk_space) { 
		direction = irandom_range(100,80)

		go = false
		ySpeed = -10
		xSpeed = irandom_range(-1,1)
				
				}
}
}

if go == false {
			Rotation ++
}

#endregion

#region Collisions

// Collide with Paddle 10/10

if place_meeting(x,y+ySpeed,oPlaneSurface) {

var surface = instance_place(x,y+ySpeed,oPlaneSurface)

if surface != noone {
	
		while !place_meeting(x,y+sign(ySpeed),surface) {
		y+= sign(ySpeed)
		}	

	if x > surface.x {
	Angle = (x - surface.x) / (surface.sprite_width/2)
	xSpeed = Angle * AngleVar
	
	}

	if x < surface.x {
	Angle = (x - surface.x) / (surface.sprite_width/2)
	xSpeed = Angle * AngleVar}
		
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




