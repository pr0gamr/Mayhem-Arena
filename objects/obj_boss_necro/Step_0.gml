//movement
direction = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = point_direction(x,y,obj_player.x,obj_player.y)



//health
if(bhealth <= 0)
{
instance_destroy()	
score += 10
}

//attacks

attack += 1

if(attack >= 300)
{
var attack_choose = choose(1,2,3,4)

	if(attack_choose == 1)
	{
		instance_create_layer(0,225,"Instances",obj_hor_aim)
		instance_create_layer(room_width,225,"Instances",obj_hor_aim)
		instance_create_layer(0,450,"Instances",obj_hor_aim)
		instance_create_layer(room_width,450,"Instances",obj_hor_aim)
		instance_create_layer(0,675,"Instances",obj_hor_aim)
		instance_create_layer(room_width,675,"Instances",obj_hor_aim)
	}
	if(attack_choose == 2)
	{
		var d = 280
		instance_create_layer(d,0,"Instances",obj_ver_aim)
		instance_create_layer(d,room_height,"Instances",obj_ver_aim)
		instance_create_layer(d*2,0,"Instances",obj_ver_aim)
		instance_create_layer(d*2,room_height,"Instances",obj_ver_aim)
		instance_create_layer(d*3,0,"Instances",obj_ver_aim)
		instance_create_layer(d*3,room_height,"Instances",obj_ver_aim)
		instance_create_layer(d*4,0,"Instances",obj_ver_aim)
		instance_create_layer(d*4,room_height,"Instances",obj_ver_aim)
	}
	if(attack_choose == 3)
	{
		repeat(20)
	{
			if(choose(0,1) == 0 ){
			var xx = choose(0,room_width)
			var yy = irandom_range(0, room_height)
			} else {
			var xx = irandom_range(0, room_width)
			var yy = choose(0, room_height)
		}
		instance_create_layer(xx, yy, "Instances",obj_zombie)
			}
		}
	if(attack_choose == 4)
	{
		repeat(3)
		{
			if(choose(0,1) == 0 ){
			var xx = choose(0,room_width)
			var yy = irandom_range(0, room_height)
			} else {
			var xx = irandom_range(0, room_width)
			var yy = choose(0, room_height)
		}
		var inst = instance_create_layer(xx, yy, "Instances",obj_zombie)
		inst.zhealth = 20
		inst.sprite_index = spr_miniboss
		inst.speed = 1.5
	}
}
attack = 0
}