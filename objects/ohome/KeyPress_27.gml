if Lives <= 0 game_restart()

if room == room_options or room == room_resolution room_goto(Menu)

RoomsMenu()

if rooms == -1 {
	
	switch (NotPause) {
	
	case true:  NotPause = false 
				global.Game_pause = true
	
	break
	
	case false:  NotPause = true 
				 global.Game_pause = false
	
	break	
	
	}



if global.Game_pause {
	instance_deactivate_layer("Instances")
	instance_deactivate_layer("Effects")
	}
if !global.Game_pause {
	instance_activate_layer("Instances")
	instance_activate_layer("Effects")
	}

}

