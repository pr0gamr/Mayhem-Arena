obj_game.boss = 0
instance_destroy(obj_zombie)
alarm_set(2,5)
if(obj_game.endless != 1)
{
	room_goto(rm_finalboss)
}