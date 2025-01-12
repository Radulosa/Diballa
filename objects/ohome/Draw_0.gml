//MENU Text

ceil(Score)

if room == Menu {
	
	draw_set_font(fMenu)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
		
	buttons = buttonsM 
	menu_index = menu_indexM 
	last_selected  = last_selectedM 

var _j = 0
	
	repeat(buttons) {
	
	    var _wid = string_width(buttonM[_j])
	    var _hei = buttonH
	
		var _dx = menu_x
	    var _dy = menu_y + _hei * _j
   
	    x1 = _dx - _wid/2;
		y1 = _dy - _hei/2;
	    x2 = _dx + _wid/2;
	    y2 = _dy + _hei/2;
   
	    if menu_index == _j {
	
	      draw_set_color(c_yellow) } else {   
		
				draw_set_color(c_white)}
 
	    draw_text(_dx, _dy, buttonM[_j]);
		
	if _j < buttons _j++
	}
		
} else if room == room_help {
	
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_font(fMenu)
	
	draw_text(menu_x,menu_y , "Press Space to launch the ball \n Use A or D to move the Paddle \n Try not to drop the ball \n You only have 3 Lives \n Press F10 to toggle Fullscreen \n Press M to kill the music \n Press ENTER to go back to the Main Menu");	


} else if room == room_win {
	
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_font(fMenu)
	
	draw_text(menu_x,menu_y , "NICEEEE! You finished the DEMO /n SCORE: " + string(Score) + "Press ENTER to go back to the Main Menu");	

} else if room == room_options {
	
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_font(fMenu)
	
//OPTIONS Text
				
	buttons = buttonsO
	menu_index = menu_indexO
	last_selected  = last_selectedO
	
var _j = 0
	
	repeat(buttons) {
	
	    var _wid = string_width(buttonO[_j])
	    var _hei = buttonH
	
		var _dx = menu_x
	    var _dy = menu_y + _hei * _j
   
	    x1 = _dx - _wid/2;
		y1 = _dy - _hei/2;
	    x2 = _dx + _wid/2;
	    y2 = _dy + _hei/2;
   
	    if menu_index == _j {
	
	      draw_set_color(c_yellow) } else {   
		
				draw_set_color(c_white)}
 
	    draw_text(_dx, _dy, buttonO[_j]);
		
	if _j < buttons _j++
	}
	

} else if room == room_resolution {
	
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_font(fMenu)
	
//OPTIONS Text
				
	buttons = buttonsR
	menu_index = menu_indexR
	last_selected  = last_selectedR
	
var _j = 0
	
	repeat(buttons) {
	
	    var _wid = string_width(buttonR[_j])
	    var _hei = buttonH
	
		var _dx = menu_x
	    var _dy = menu_y + _hei * _j
   
	    x1 = _dx - _wid/2;
		y1 = _dy - _hei/2;
	    x2 = _dx + _wid/2;
	    y2 = _dy + _hei/2;
   
	    if menu_index == _j {
	
	      draw_set_color(c_yellow) } else {   
		
				draw_set_color(c_white)}
 
	    draw_text(_dx, _dy, buttonR[_j]);
		
	if _j < buttons _j++
	}
	
} else {

#region LOSE ROOM

	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_font(fMenu)
	

if Lives <= 0 {
		draw_text_transformed_color(room_width/2,(room_height/2),"SCORE: " + string(Score) +
	 "\n GAME OVER" + 
	 "\n PRESS ANY KEY",1.5,1.5,0,c_white,c_aqua,c_blue,c_navy,1)
}}

draw_set_valign(fa_left)
draw_set_halign(fa_left)



#endregion

	draw_text_color(100,100,"Number of bricks " + string(instance_number(oBrick)),c_white,c_white,c_white,c_white,1)