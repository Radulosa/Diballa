y -= 2.65

if !WingFlap && WingCount > 0{
	alarm[1] = 70
	WingFlap = true
	}

if y <= 0 instance_destroy()

if FireBolt
{
 
 if y < room_width * 0.99 {

    {
        FireBolt = false;
        alarm[0] = 999;
        instance_create_layer(x,y-sprite_height/2,"Instances",oFireBoltEF)
		audio_play_sound(aDragonFireBreath,1,0)
    }
}}