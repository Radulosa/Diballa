		ini_open("Game_Settings.ini")
			global.width =  ini_read_real("Setting","Width",1920)
			global.height = ini_read_real("Setting","Height",1080)
		ini_close()

Resolution()