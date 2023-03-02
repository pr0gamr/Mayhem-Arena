
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