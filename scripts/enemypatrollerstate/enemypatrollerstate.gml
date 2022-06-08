// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyPatrollerStateIdle(){

	sprite_index = sBanditRun
	image_speed = 1
	aggroRange = 200
	
	faceDirectionRunning(attackOffset)
	
	if (path_position = 1 and stopped = false)
	{
		

		alarm_set(2,45)
		stopped = true
	}
	
	if stopped = true sprite_index = sBanditIdle


if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	
	patrollerState = enemyPatrollerStateChasing
	alarm_set(2, -1)
	alarm_set(2, 1)
	show_debug_message("Aha!")
}


	

}

function enemyPatrollerStateChasing(){
	


faceDirectionRunning(attackOffset)
	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400
//if point_distance(x, y, target.x, target.y) > 20 move_towards_point(target.x, target.y, 2)



if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
	path_end()
	patrollerState = enemyPatrollerStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	patrollerState = enemyPatrollerStateAttacking
}



}

function enemyPatrollerStateAttacking(){	
	
	if !inPlayerDimension {
		patrollerState = enemyPatrollerStateIdle
		exit
	}
	
sprite_index = sBanditAttack



hspeed *= attackDeceleration
vspeed *= attackDeceleration

if image_index > 4 && canAttack {
	canAttack = false

	self.attack = SpawnHitbox(oBanditSwordHitbox, attackConfig)
}

oBanditPatroller.alarm[0] = attackDelay
oBanditPatroller.alarm[2] = 8

checkAnimEnd(sprite_index, image_index, image_speed, image_number)

}



function enemyPatrollerStateDeath(){
	hspeed = 0
	vspeed = 0
	
	sprite_index = sBanditDeath
	checkAnimEnd(sprite_index, image_index, image_speed, image_number)
	
}