if(room == rm_game){
if(boss < 1)
{
	ramping += 1
	}
	if(ramping >= 1200)
{
		scale = scale * 0.75
		ramping = 0
	}
	if(scale <= 0.01999)
{
		scale = 0.02	
	}

	if((score >= 50 and score <= 59) or (score >= 150 and score <= 159) or (score >= 250 and score <= 259)) && (boss < 1)
{	
		if(choose(0,1) == 0 ){
			var xx = choose(0,room_width)
			var yy = irandom_range(0, room_height)
			} else {
			var xx = irandom_range(0, room_width)
			var yy = choose(0, room_height)
}
		if (score >= 50 and score <= 59)
		{
			instance_create_layer(xx, yy, "Instances",obj_boss)
			boss = 1
		}
		if (score >= 150 and score <= 159)
		{
				instance_create_layer(xx, yy, "Instances",obj_boss_pyro)
				boss = 2
		}
		if (score >= 250 and score <= 259)
		{
				instance_create_layer(xx, yy, "Instances",obj_boss_necro)
				boss = 3
		}
}

}

if(keyboard_check_pressed(vk_enter)){
	switch(room){
			case rm_start:
				room_goto(rm_game)
				break
				
			case rm_gameover:
				game_restart()
				break
	}
}

if(room == rm_game)
{
if(health <= 0){
	room_goto(rm_gameover)
}
}
