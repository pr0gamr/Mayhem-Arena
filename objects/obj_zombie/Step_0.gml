//movement
direction = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = point_direction(x,y,obj_player.x,obj_player.y)

//health
if(zhealth <= 0)
{
instance_destroy()	
if(miniboss == 1)
{
score += 1
}
}


