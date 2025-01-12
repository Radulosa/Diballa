// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_level(){
	instance_destroy(oCard);
	instance_destroy(oButtonSkip);
	oHome.difficulty++;
	oHome.current_level++;
	level_generate(1,room_width/sprite_get_width(sBrick),6+oHome.difficulty,6+oHome.difficulty,10+oHome.difficulty);
}