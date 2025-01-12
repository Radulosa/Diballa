if global.Game_start {

//Game needed display

if room == room11 {
	display_set_gui_size(room_width,room_height)
	var bricks = instance_number(oBrick)
	if bricks <= 0 && global.Game_pause = false	{
		show_cards(cards)
		instance_create_layer(window_get_width()/2,window_get_height()/2,"UI",oPointer)
	}
}
			
	

draw_set_font(fInfo)

	draw_set_valign(fa_left)
	draw_set_halign(fa_left)

	var _x = Gui_draw_x
	var _y = Gui_draw_y * 9
	
	//SCore
if global.Game_pause = false {

	draw_text_transformed_color(_x*0.03, _y,"SCORE: " + "\n" + string(Score),1.4,1.4,0,c_black,c_black,c_black,c_black,oPlayer.HideLeft*0.3);
	draw_text_transformed_color(_x*0.03+5, _y + 5,"SCORE: " + "\n" + string(Score),1.4,1.4,0,c_white,c_white,c_white,c_white,oPlayer.HideLeft*1);
	draw_text_transformed_color(_x*0.1, _y,"GOLD: " + "\n" + string(gold),1.4,1.4,0,c_black,c_black,c_black,c_black,oPlayer.HideLeft*0.3);
	draw_text_transformed_color(_x*0.1+5, _y + 5,"GOLD: " + "\n" + string(gold),1.4,1.4,0,c_white,c_white,c_white,c_white,oPlayer.HideLeft*1);

	

	//Multiplier
	
//	draw_text_transformed_color(_x, _y,"COMBO: " + "\n" + string(Multiplier),1.4,1.4,0,c_black,c_black,c_black,c_black,0.3);
//	draw_text_transformed_color(_x, _y+5,"COMBO: " + "\n" + string(Multiplier),1.4,1.4,0,c_white,c_white,c_white,c_white,1);


	//Highscore

//	draw_text_transformed_color(_x/0.4, _y,"HIGHSCORE:" + "\n" + string(Highscore),1.4,1.4,0,c_black,c_black,c_black,c_black,0.3);
//	draw_text_transformed_color(_x/0.4+5, _y+5,"HIGHSCORE:" + "\n" + string(Highscore),1.4,1.4,0,c_white,c_white,c_white,c_white,1);

	
	//Time
	
//	if (Timeminutes<10) && (Timeseconds<10){
//		draw_text_transformed_color(_x, 2.3 * _y,"TIME:" + "\n" + "0" + string(Timeminutes) +":"+ "0" + string(Timeseconds),GUIX,GUIY,0,c_black,c_black,c_black,c_black,0.3);
//		draw_text_transformed_color(_x, 2.35 * _y,"TIME:" + "\n" + "0" + string(Timeminutes) +":"+ "0" + string(Timeseconds),GUIX,GUIY,0,c_white,c_white,c_white,c_white,1);
//		}else if (Timeminutes<10){
//		draw_text_transformed_color(_x, 2.3 * _y,"TIME:" + "\n" + "0" + string(Timeminutes) +":"+ string(Timeseconds),GUIX,GUIY,0,c_black,c_black,c_black,c_black,0.3);
//		draw_text_transformed_color(_x, 2.35 * _y,"TIME:" + "\n" + "0" + string(Timeminutes) +":"+ string(Timeseconds),GUIX,GUIY,0,c_white,c_white,c_white,c_white,1);
//		} else {
//		draw_text_transformed_color(_x, 2.3 * _y,"TIME:" + "\n" + string(Timeminutes) +":"+ string(Timeseconds),GUIX,GUIY,0,c_black,c_black,c_black,c_black,0.3);
//		draw_text_transformed_color(_x, 2.35 * _y,"TIME:" + "\n" + string(Timeminutes) +":"+ string(Timeseconds),GUIX,GUIY,0,c_white,c_white,c_white,c_white,1);
//		}

	
	//Lives

	draw_text_transformed_color(_x*0.92, _y,"LIVES:",GUIX,GUIY,0,c_black,c_black,c_black,c_black,oPlayer.HideRight * 0.3);
	draw_text_transformed_color(_x*0.92+5,_y+5,"LIVES:",GUIX,GUIY,0,c_white,c_white,c_white,c_white,oPlayer.HideRight * 1);

	repeat(Lives) {
		draw_sprite_ext(sBallLife,lifeValue,_x*0.92+65,_y+60,1,1,0,c_white,oPlayer.HideRight * 1)
		_x -= 60
	}
	}
}
