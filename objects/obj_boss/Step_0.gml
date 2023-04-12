//movement
if(chargeattack != 1)
{
direction = point_direction(x,y,obj_player.x,obj_player.y)
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
}


//health
if(bhealth <= 0)
{
instance_destroy()	
score += 10
health = 10
obj_player.Rscale += 30
obj_player.Sscale += 24
obj_player.Gscale += 45
}

//attacks

attack += 1

if(attack >= 450)
{
var attack_choose = choose(0,1,2,3)

if(attack_choose == 0)
{
chargeattack = 1
speed = 0
alarm_set(0,30)
}
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
//insertrockwallthingymiggee
alarm_set(3,180)
bhealth += 100
instance_create_layer(x,y,"Instances",obj_bossblock)
}

attack = 0
}