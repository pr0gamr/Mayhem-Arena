//movement
if(keyboard_check(vk_up))
{
y -= 3
}
if(keyboard_check(vk_down))
{
y += 3
}
if(keyboard_check(vk_right))
{
x += 3
}
if(keyboard_check(vk_left))
{
x -= 3
}




x = clamp(x,0,room_width)
y = clamp(y,0,room_height)

image_angle = point_direction(x,y,mouse_x,mouse_y)

//shooting
riflecooldown -= 15
shotguncooldown -= 1
rpgcooldown -= 1
if(mouse_check_button(mb_left))
{
if(choice == 1) & (riflecooldown <= 0)
{
	var inst = instance_create_layer(x,y,"Instances",obj_bullet)
	inst.direction = image_angle
	
	riflecooldown = 120

}
if(choice == 2) & (shotguncooldown <= 0)
{
	repeat(12)
	{
	var inst = instance_create_layer(x,y,"Instances",obj_shell)
	inst.direction = image_angle + irandom_range(-30,30)
	}
	shotguncooldown = 96

}
if(choice == 3) & (rpgcooldown <= 0)
{
	
	var inst = instance_create_layer(x,y,"Instances",obj_rocket)
	inst.direction = image_angle
	inst.image_angle = image_angle
	
	
	rpgcooldown = 180
}
}
