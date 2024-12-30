//Colision

#region Collision

	//VERTICAL	

		if place_meeting(x,y+ySpeed,oBrick) {
	while !place_meeting(x,y+sign(ySpeed),oBrick) {
		y+= sign(ySpeed)}	
							
	if (x + 2) < (other.x - other.sprite_width/2) or (x - 2) > (other.x + other.sprite_width/2) 
	
			ySpeed *= 1 else 
			
		ySpeed *= -1
	
		}
		
	
	//HORIZONTAL
	
		if place_meeting(x+xSpeed,y,oBrick) {
	while !place_meeting(x+sign(xSpeed),y,oBrick) {
		x+= sign(xSpeed)}
	
	
		//Left - down
	
			if xSpeed < 0 && ySpeed > 0 {
		
				if (x > (other.x + other.sprite_width/2 )) {
	
			xSpeed *= -1}  else {
	
			xSpeed *= 1 }}
	
		//Right - down
	
			if xSpeed > 0 && ySpeed > 0 {
		
				if (x < (other.x - other.sprite_width/2 )) {
	
			xSpeed *= -1}  else {
	
			xSpeed *= 1 }} 

		//Left - up
	
			if xSpeed < 0 && ySpeed < 0 {
		
				if (x > (other.x + other.sprite_width/2 )) {
	
			xSpeed *= -1}  else {
	
			xSpeed *= 1 }}
				
		//Right - up
	
			if xSpeed > 0 && ySpeed < 0 {
		
				if (x < (other.x - other.sprite_width/2 )) {
	
			xSpeed *= -1} else {
	
			xSpeed *= 1 }} 
		
		}
		
#endregion 

/// @description Power-ups and Sound Effects


#region Sound Effects

//Sounds Played

if other.BrickType = "Simple" {

var _sound1 = choose(aSimpleBrick1,aSimpleBrick2,aSimpleBrick3);
audio_play_sound(_sound1,1,false)

} else if other.BrickType = "Bronze" {
	
var _sound2 = choose(aBronzeBrick1,aBronzeBrick2,aBronzeBrick3);
audio_play_sound(_sound2,1,false)	
	
} else if other.BrickType = "Steel" {
	
var _sound2 = choose(aBronzeBrick1,aBronzeBrick2,aBronzeBrick3);
audio_play_sound(_sound2,1,false)	
	
}


#endregion

#region Damage, Random Drops

//Damage

	other.HP -= 3
	other.image_speed = 1

//Random Drop

if other.HP <= 0 {
	
	instance_destroy(other);
	oHome.Score += 5
	
}
#endregion


