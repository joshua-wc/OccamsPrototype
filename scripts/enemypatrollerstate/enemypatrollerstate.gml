// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyPatrollerStateIdle(){

	sprite_index = sBanditRun
	image_speed = 1
	aggroRange = 200
	
	
	
	if (path_position = 1 and stopped = false)
	{
		

		alarm_set(2,45)
		stopped = true
	}
	
	if stopped = true sprite_index = sBanditIdle


if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	
	state = enemyPatrollerStateChasing
	alarm_set(2, -1)
	alarm_set(2, 1)
	show_debug_message("Aha!")
}


	

}

function enemyPatrollerStateChasing(){
	



	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400




if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
	path_end()
	state = enemyPatrollerStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	state = enemyPatrollerStateAttacking
}



}

function enemyPatrollerStateAttacking(){	
	
	if !inPlayerDimension {
		state = enemyPatrollerStateIdle
		exit
	}
	
sprite_index = sBanditAttack

var attackConfig = 
{
x : x + attackOffset,
y : y,
layer : layer,
dimension : currentDimension,
originDimension : originDimension,
number : number
}

hspeed *= attackDeceleration
vspeed *= attackDeceleration

if image_index > 4 && canAttack {
	canAttack = false

	self.attack = SpawnHitbox(oBanditSwordHitbox, attackConfig)
	oBanditPatroller.alarm[0] = attackDelay
	
}
oBanditPatroller.alarm[2] = 8
endBanditPatrollerAttack(image_index, image_speed, image_number)

}



