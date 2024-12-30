Mx = mouse_x
My = mouse_y

x = Mx
y = My

if room == Menu or room == room_options or room == room_powers {
	
	if keyboard_check(vk_anykey) { 
		oHome.UseKey = true
	}
	if x != xprevious or y != yprevious {
		oHome.UseKey = false
	}
}

if oHome.UseKey {
					
		}
		
if !oHome.UseKey {
				
}