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
}

//attacks

attack += 1

if(attack >= 300)
{
var attack_choose = choose(0)
if(attack_choose == 0)
{
chargeattack = 1
speed = 0
alarm_set(0,30)
}
if(attack_choose == 1)
{

}
if(attack_choose == 2)
{

}
if(attack_choose == 3)
{

}
if(attack_choose == 4)
{

}
attack = 0
}