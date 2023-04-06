if(finalchoice == 0 && room == rm_finalboss && mouse_x >= 128 && mouse_x <= 628 && mouse_y >= 644 && mouse_y <= 744)
{

	finalchoice = 1
	room_goto(rm_gameover)
}

if(finalchoice == 0 && room == rm_finalboss && mouse_x >= 628 && mouse_x <= 1228 && mouse_y >= 644 && mouse_y <= 744)
{
	instance_create_layer(room_height/2, room_height/2, "Instances",obj_player)
	finalchoice = 2	
	alarm_set(2,10)
}




