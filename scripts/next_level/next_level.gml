// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_level(){
	instance_destroy(oCard);
	instance_destroy(oButton_skip);
	oHome.difficulty++;
	oHome.current_level++;
	level_generate();
}