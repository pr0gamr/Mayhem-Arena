switch(room){
	case rm_game:
		draw_text_transformed_color(1100,794,"weapon select : ",1.5,1.5,0,c_white,c_white,c_white,c_white,1)
	if(obj_player.choice == 1)
	{
		draw_text_transformed_color(1300,794,"Rifle",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
	}
	if(obj_player.choice == 2)
	{
		draw_text_transformed_color(1300,794,"Shotgun",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
	}
	if(obj_player.choice == 3)
	{
		draw_text_transformed_color(1300,794,"RPG",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
	}
		draw_text_transformed_color(1100,834,"zombies killed : "+string(score),1.5,1.5,0,c_white,c_white,c_white,c_white,1)

	if(boss = 1)
	{
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2,100,"BOSS HEALTH : "+string(obj_boss.bhealth),3,3,0,c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
	}
	if(boss = 2)
	{
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2,100,"BOSS HEALTH : "+string(obj_boss_pyro.bhealth),3,3,0,c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
	}
	if(boss = 3)
	{
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2,100,"BOSS HEALTH : "+string(obj_boss_necro.bhealth),3,3,0,c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
	}
	draw_healthbar(room_width/2-100, 25, room_width/2+100, 50, health*10 ,c_black,c_red,c_green,0,true,true)
	draw_set_halign(fa_center)
	draw_text(room_width/2,30,"health : "+string(health))
	draw_set_halign(fa_left)
		break

	case rm_start:
		draw_set_halign(fa_center)
	var C = c_yellow
		draw_text_transformed_color(
		room_width/2, 200, "MAYHEM ARENA", 
		4, 4, 0, C, C, C, C, 1
		)
		draw_text_transformed(
		room_width/2, 400, 
		@"
See how long you can survive!

Left click to shoot
Right click to switch weapons
Move mouse to aim
Arrow keys to move






>> PRESS ENTER TO START <<
",2,2,0)
		draw_set_halign(fa_left)
	break
	
	case rm_gameover:
if(finalchoice != 1)
{
		draw_set_halign(fa_center)
		var C = c_red
			draw_text_transformed_color(
			room_width/2, 200, "YOU DIED", 
			3, 3, 0, C, C, C, C, 1
			)
			var R = c_white
	draw_text_transformed_color(
			room_width/2, 300, "Final kills : "+string(score), 
			2, 2, 0, R, R, R, R, 1
			)
	draw_text_transformed(
			room_width/2, 700, 
	">>PRESS ENTER TO RESTART<<",2,2,0)
			draw_set_halign(fa_left)
}else{ 
	if(finalchoice = 1)
{
		draw_set_halign(fa_center)
		var C = c_red
			draw_text_transformed_color(
			room_width/2, 200, "YOU JOINED THE DARK", 
			3, 3, 0, C, C, C, C, 1
			)
			var R = c_white
	draw_text_transformed_color(
			room_width/2, 300, "You chose wrong", 
			2, 2, 0, R, R, R, R, 1
			)
	draw_text_transformed(
			room_width/2, 700, 
	">>PRESS ENTER TO RESTART<<",2,2,0)
			draw_set_halign(fa_left)
}
}
	break
	
case rm_finalboss:
	
	if(finalchoice = 0)
		{
			draw_set_halign(fa_center)
			var R = c_red
			draw_rectangle_color(128,544,628,644,R,R,R,R,R)
			draw_text_transformed_color(378,584,"YES",2.5,2.5,0,R,R,R,R,1)
			
			draw_rectangle_color(728,544,1228,644,R,R,R,R,R)
			draw_text_transformed_color(978,584,"NO",2.5,2.5,0,R,R,R,R,1)
		}
	if(embodyment = 1)
	{
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2,100,"BOSS HEALTH : "+string(obj_embodymentofevil.bhealth),3,3,0,c_white,c_white,c_white,c_white,1)
		draw_set_halign(fa_left)
		}
		if(finalchoice = 2)
		{
				draw_text_transformed_color(1100,794,"weapon select : ",1.5,1.5,0,c_white,c_white,c_white,c_white,1)
		if(obj_player.choice == 1)
		{
				draw_text_transformed_color(1300,794,"Rifle",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
		}
		if(obj_player.choice == 2)
		{
				draw_text_transformed_color(1300,794,"Shotgun",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
		}
		if(obj_player.choice == 3)
		{
				draw_text_transformed_color(1300,794,"RPG",1.5,1.5,0,c_white,c_white,c_white,c_white,1)	
		}	
		draw_healthbar(room_width/2-100, 25, room_width/2+100, 50, health*2 ,c_black,c_red,c_green,0,true,true)
		draw_set_halign(fa_center)
		draw_text(room_width/2,30,"health : "+string(health))
		draw_set_halign(fa_left)
	}
break
}





