#region START
// Start 10/10
		x += xSpeed
		y += ySpeed
		
		currentxSpeed = xSpeed
		currentySpeed = ySpeed

if go == true {
	
x = oPlayer.x - 0.4
y = oPlayer.y - 40

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

Surface = instance_place(x,y+ySpeed,oPlaneSurface)

if Surface != noone {
	
		while !place_meeting(x,y+sign(ySpeed),Surface) {
		y+= sign(ySpeed)
		}	

	if x > Surface.x {
	Angle = (x - Surface.x) / (Surface.sprite_width/2)
	xSpeed = Angle * AngleVar
	
	}

	if x < Surface.x {
	Angle = (x - Surface.x) / (Surface.sprite_width/2)
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




