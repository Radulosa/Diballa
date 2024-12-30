ceil(Score)

#region Menu move & interact

menu_x = room_width/2
menu_y = room_height/2
		
Gui_draw_x = room_width
Gui_draw_y = (room_height * 0.1)



if !keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) {
	
	if room == Menu {
		
		menu_index = menu_indexM 	
		switch (menu_index) { 
	
		case 0:
		room_goto(room11)
		global.Game_start = true
		break
	
		case 1:
		room_goto(room_powers)
		break
	
		case 2:
		room_goto(room_options)
		break
	
		case 3:
		game_end()
		break
		}	
	}
	
	if room == room_options {
	
		switch (menu_index) { 
	
		case 0:
		
		room_goto(room_resolution)

		break
	
		case 1:

		break
		
		case 3:
		
		room_goto(Menu)
		
		break
		}
	}		
	
	if room == room_resolution {
		
		var width;
		var height;
	
		switch (menu_index) { 
	
		case 0:
		width  = 1920
		height = 1080
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()
		break
	
		case 1:
		width  = 1600
		height = 900
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()
		break
	
		case 2:
		width  = 1400
		height = 1050
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()
		break
	
		case 3:
		width  = 1366
		height = 768
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()
		break
		
		case 4:
		width  = 1280
		height = 720
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()
		break
		
		case 5:
		
		break
		
		case 6:
		room_goto(Menu)
		
		break
		
		}		
}
}

if room == Menu {
	
buttons = buttonsM 
menu_index = menu_indexM 
last_selected = last_selectedM 
menuSize = menuSizeM
		
Menu_move()
		
}

if room == room_options {
	
buttons = buttonsO
menu_index = menu_indexO 
last_selected = last_selectedO
menuSize = menuSizeO
	
	Menu_move()
	
}

if room == room_resolution {
	
buttons = buttonsR
menu_index = menu_indexR 
last_selected = last_selectedR
menuSize = menuSizeR
	
	Menu_move()
	
}

#endregion

#region Lives & Win/Lose Conditions

curvePos += curveSpeed
curvePos = curvePos mod 1

var _curveStruct = animcurve_get(curveAsset)
var _channel =animcurve_get_channel(_curveStruct,0)

lifeValue = animcurve_channel_evaluate(_channel,curvePos)

var _Balls = instance_number(oBall)

if (_Balls <= 0 && Dead == true) {
Lives -= 1
alarm[1] = room_speed * 3
Dead = false
}

//Lose condition

if Lives <= 0 {
		oPlayer.keyLeft = 0
	oPlayer.keyRight = 0
	if keyboard_check(vk_anykey) {
		Lives = 3
		Score = 0
		game_restart()
	}
	
	if Score > Highscore Highscore = Score
}

	

//Win condition

RoomsMenu()

if rooms == -1 {

	var _Bricks = instance_number(oBrick)
	if _Bricks <= 0 && NotPause = true 
	{
		
	}
}
#endregion

#region MUSIC (LOTS OF WORK TO BE DONE)


//Backgroud music



#endregion

#region Time

if global.Game_start && NotPause = true {
	
	RoomsMenu()

if rooms == -1 && Lives > 0 {

	InternalTime++
	if InternalTime > 59 {
		Timeseconds++
		InternalTime = 0
		}
	if Timeseconds > 59 {
		Timeminutes++
		Timeseconds = 0
	}}
}

#endregion

#region Fullscreen & Resolution

if (keyboard_check(vk_alt)) && keyboard_check_released(vk_enter) {
	if window_get_fullscreen() {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}


#endregion

#region Mouse Pointer

window_set_cursor(cr_none)

#endregion
