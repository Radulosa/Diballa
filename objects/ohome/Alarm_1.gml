/// @description Respawn Ball

if Lives > 0 && NotPause {	
		instance_create_layer(oPlayer.x -11,oPlayer.y - 29,"Instances",oBall)
	with(oBall) {
		go = true
	}
}