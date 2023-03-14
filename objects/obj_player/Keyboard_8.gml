repeat(20)
	{
	var inst = instance_create_layer(x,y,"Instances",obj_rocket)
	inst.direction = circle
	inst.image_angle = image_angle
	circle += 3
	if(circle >= 361)
	
	{
	circle = 0	
	}
	}

repeat(12)
	{
	var inst = instance_create_layer(x,y,"Instances",obj_shell)
	inst.direction = circle + irandom_range(-30,30)
	}

repeat(20)
{
var inst = instance_create_layer(x,y,"Instances",obj_bullet)
	inst.direction = circle
}



