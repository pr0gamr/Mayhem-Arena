//movement
direction = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = point_direction(x,y,obj_player.x,obj_player.y)

//health
if(zhealth <= 0)
{
if(miniboss == 1)
{
score += 3
}
else
{
score += 1	
}
instance_destroy()
}


