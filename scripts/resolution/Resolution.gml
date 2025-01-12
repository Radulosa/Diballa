function Resolution(){
	
	var _displayWidth = global.width
	var _displayHeight = global.height
	
	display_set_gui_size(_displayWidth,_displayHeight)
	
	window_set_size(_displayWidth,_displayHeight)
	
	var _baseWidth = 1920
	var _baseHeight = 1080
	
	var _aspect = _baseWidth/_baseHeight
	
	if (_displayWidth >= _displayHeight) {
	
		var _height = min (_baseHeight, _displayHeight)
		var _width = _height * _aspect
		
		surface_resize(application_surface,_width,_height)
		alarm[2] = 1
		
	}

}