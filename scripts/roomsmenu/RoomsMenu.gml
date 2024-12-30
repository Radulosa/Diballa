// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomsMenu(){
	
	var _rooms1 = ds_list_create()

	ds_list_add(_rooms1,Menu,room_help,room_options,room_win)

	rooms = ds_list_find_index(_rooms1, room)

}