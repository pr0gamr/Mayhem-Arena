speed = 12
if(instance_exists(obj_zombie))
{
	var inst = instance_furthest(x,y,obj_zombie)
	direction = point_direction(x,y,inst.x,inst.y) 
	image_angle = point_direction(x,y,inst.x,inst.y)
}
else if(instance_exists(obj_boss))
{
	var inst = instance_furthest(x,y,obj_boss)
	direction = point_direction(x,y,inst.x,inst.y) 
	image_angle = point_direction(x,y,inst.x,inst.y)
}
else if(instance_exists(obj_boss_pyro))
{
	var inst = instance_furthest(x,y,obj_boss_pyro)
	direction = point_direction(x,y,inst.x,inst.y) 
	image_angle = point_direction(x,y,inst.x,inst.y)
}
else if(instance_exists(obj_boss_necro))
{
	var inst = instance_furthest(x,y,obj_boss_necro)
	direction = point_direction(x,y,inst.x,inst.y) 
	image_angle = point_direction(x,y,inst.x,inst.y)
}
else if(instance_exists(obj_embodymentofevil))
{
	var inst = instance_furthest(x,y,obj_embodymentofevil)
	direction = point_direction(x,y,inst.x,inst.y) 
	image_angle = point_direction(x,y,inst.x,inst.y)
}
else
{
instance_destroy()	
}