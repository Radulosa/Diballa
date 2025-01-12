
is_alive = true; // Track player state
barrier_instance = noone; 

hSpeed = 0
Speed = 10
Enlarge = false
CurrentSprite = 0
sprite_index = CurrentSprite

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

// States
enum PlayerState {
    IDLE,
    MOVE_LEFT,
    MOVE_RIGHT,
    DASH,
	CASTBARRIER
}

// Variables
currentState = PlayerState.CASTBARRIER;
dash_timer = 0;
double_tap_timer = 0;
double_tap_time_limit = 22;
double_tap_key = 0;

// Movement
move_speed = 4;
dash_speed = 10;

// Resources
mana = 100;
mana_cost_per_step =0.5;

// Sprites
sprite_idle = sMagus_FrontIdle;
sprite_move_left = sMagus_LeftWalk;
sprite_move_right = sMagus_RightWalk;
sprite_dash = sMagus_Dash;

// Initial sprite
sprite_index = sprite_idle;

// Wobble Effect
wobble_frame_count = 0;
wobble_magnitude = 1;
original_scale_x = image_xscale * 1;
original_scale_y = image_yscale * 1;








