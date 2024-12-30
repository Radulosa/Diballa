// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveResolution(){
		ini_open("Game_Settings.ini")
		ini_write_real("Setting","Width",width)
		ini_write_real("Setting","Height",height)
		ini_close()
		
		global.width = width
		global.height = height
		
		Resolution()

}