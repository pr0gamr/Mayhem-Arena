x = clamp(x,0,room_width)
y = clamp(y,0,room_height)

image_angle = point_direction(x,y,mouse_x,mouse_y)

//shooting
riflecooldown -= 15
shotguncooldown -= 1
rpgcooldown -= 1
if(mouse_check_button(mb_left))
{
if(choice == 1) & (riflecooldown <= Rscale)
{
	var inst = instance_create_layer(x,y,"Instances",obj_bullet)
	inst.direction = image_angle
	
	if(room = rm_game)
	{
		riflecooldown = 120
	}else{
		riflecooldown = 30
	}
}
if(choice == 2) & (shotguncooldown <= Sscale)
{
	repeat(12)
	{
	var inst = instance_create_layer(x,y,"Instances",obj_shell)
	inst.direction = image_angle + irandom_range(-20,20)
	}

	if(room = rm_game)
	{
		shotguncooldown = 96
	}else{
		shotguncooldown = 24
	}

}
if(choice == 3) & (rpgcooldown <= Gscale)
{
	
	var inst = instance_create_layer(x,y,"Instances",obj_rocket)
	inst.direction = image_angle
	inst.image_angle = image_angle
	
	if(room = rm_game)
	{
		rpgcooldown = 180
	}else{
		rpgcooldown = 45
	}
	

}
if(choice == 4)
{
	repeat(5)
	{
	instance_create_layer(x,y,"Instances",obj_homingclose)
	instance_create_layer(x,y,"Instances",obj_homingfar)
	}
}
}
