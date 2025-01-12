function Menu_move()

{	
menu_moveDown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
menu_moveUp = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)

if UseKey {
	
	menu_move = menu_moveDown - menu_moveUp
	
	menu_index += menu_move	

	if (menu_index < 0) menu_index = buttons - 1
	if (menu_index > buttons - 1) menu_index = 0
	
	if (menu_index != last_selected) audio_play_sound(aMenuSelect,1,false)
	
		last_selected = menu_index
		
		if room == Menu{
		
	buttonsM = buttons 
	menu_indexM = menu_index 
	last_selectedM = last_selected
	menuSize = menuSizeM
	itemH = itemHM
	}

		if room == room_options{

	buttonsO = buttons 
	menu_indexO = menu_index 
	last_selectedO = last_selected
	menuSize = menuSizeO
	itemH = itemHO
	
	}
	
		if room == room_resolution{

	buttonsR = buttons 
	menu_indexR = menu_index 
	last_selectedR = last_selected
	menuSize = menuSizeR
	itemH = itemHR
	
	}
} else {		
		if instance_exists(oPointer) {
			
			var _mouse_y_gui = oPointer.y	
			var _dy = menu_y - buttonH/2 + 1
		
		
		if _mouse_y_gui > _dy && _mouse_y_gui < menuSize {	
				
			menu_index =  (_mouse_y_gui - _dy) div buttonH
		}
			
	if (menu_index != last_selected) audio_play_sound(aMenuSelect,1,false);
	
		last_selected = menu_index;

		
		if room == Menu{
		
	buttonsM = buttons 
	menu_indexM = menu_index 
	last_selectedM = last_selected
	menuSize = menuSizeM
	itemH = itemHM
	}

		if room == room_options{

	buttonsO = buttons 
	menu_indexO = menu_index 
	last_selectedO = last_selected
	menuSize = menuSizeO
	itemH = itemHO
	}
	
		if room == room_resolution{

	buttonsR = buttons 
	menu_indexR = menu_index 
	last_selectedR = last_selected
	menuSize = menuSizeR
	itemH = itemHR
	}
			}}}