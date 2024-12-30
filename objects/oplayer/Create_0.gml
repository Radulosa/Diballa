hSpeed = 0
Speed = 10
Enlarge = false
CurrentSprite = 0


global.combining = false
global.power_ups = []
MAX_POWERUPS = 2

StartSoundCount = 1

lightningStartTime = 0


viewX = camera_get_view_x(view_camera[0])
viewY = camera_get_view_y(view_camera[0])


Shake = false
HideLeft = 1
HideRight = 1

x = room_width / 2
y = room_height * 0.965

State()

currentState = states.Normal;
CurrentSprite = sPaddle

sprite_index = CurrentSprite
image_xscale = 2
image_yscale = 1.1
