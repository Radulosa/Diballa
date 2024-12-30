difficulty = 1  // Initial difficulty level
gold = 100      // Player's starting gold
special_chance = 5 // Chance of special level (in %)
brick_rows = 5
brick_columns = room_width / sprite_get_width(sBrick)
current_level = 1
brick_count = 0
cards = ["Attack Boost", "Shield Boost", "Gold Bonus"] // Example cards


roomsLevel1 = ds_list_create()

ds_list_add(roomsLevel1,
	"room11",
	"room12",
	"room13",
	"room14",
	"room15")

audio_group_load(soundEffects)

randomize()
window_set_fullscreen(true)

//AC Lives
curveAsset = ACLives
curvePos = 0
curveSpeed = 0.007
lifeValue = 1
Multiplier = 1
NotPause = true
UseKey = false


global.Game_start = false
global.Game_pause = false

pan_completed = false

//BG Elements

CreateCloud = true

//Menu

menu_x = room_width/2
menu_y = room_height/2
buttonH = font_get_size(fMenu) + 10

//Menu Buttons

#region Main Menu

buttonM[0] = "New Game"
buttonM[1] = "Help"
buttonM[2] = "Options"
buttonM[3] = "Quit"

buttonsM = array_length(buttonM);

menu_indexM = 0;
last_selectedM = 0;

#endregion

#region Options

buttonO[0] = "RESOLUTION"
buttonO[1] = "SOUND"
buttonO[2] = ""
buttonO[3] = "BACK"

buttonsO = array_length(buttonO);

menu_indexO = 0;
last_selectedO = 0;

#endregion

#region Resolution

buttonR[0] = "1920x1080"
buttonR[1] = "1600x900"
buttonR[2] = "1400x1050"
buttonR[3] = "1366x768"
buttonR[4] = "1280x720"
buttonR[5] = ""
buttonR[6] = "BACK"

buttonsR = array_length(buttonR);

menu_indexR = 0;
last_selectedR = 0;

#endregion

menuSizeM = (menu_y - buttonH/2) + (buttonH  * buttonsM)
menuSizeO = (menu_y - buttonH/2) + (buttonH * buttonsO)
menuSizeR = (menu_y - buttonH/2) + (buttonH * buttonsR)
itemHM = buttonH  * buttonsM
itemHO = buttonH  * buttonsO
itemHR = buttonH  * buttonsR

