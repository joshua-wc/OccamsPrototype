// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyPatrollerStateIdle(){

	sprite_index = sBanditRun
	image_speed = 1
	aggroRange = 200
	
	
	

if x > path_get_x(patrolPath, path_position-path_speed/path_get_length(path_index)) {
	image_xscale = -1
	attackOffset = 18
} else {
	image_xscale = 1
attackOffset = -18	
}


if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	patrollerState = enemyPatrollerStateChasing
	show_debug_message("Aha!")
}

if point_distance(originX, originY, x, y ) > 8 {
	patrollerState = enemyPatrollerStateReturning

}
	

}

function enemyPatrollerStateChasing(){
	
path_end()
	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400
if point_distance(x, y, target.x, target.y) > 20 move_towards_point(target.x, target.y, 2)

if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
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

checkAnimEnd(sprite_index, image_index, image_speed, image_number)

}

function enemyPatrollerStateReturning(){
sprite_index = sBanditRun
	image_speed = 0.5
	aggroRange = 200
	move_towards_point(originX, originY, 1)
	if point_distance(x, y, originX, originY) <= 2 
	{
		path_start(patrolPath, 2, path_action_reverse, 0)
		patrollerState = enemyPatrollerStateIdle
	}
	
	if (point_distance(x, y, target.x, target.y) <= aggroRange) {
	patrollerState = enemyPatrollerStateChasing
	
}
	
}

function enemyPatrollerStateDeath(){
	hspeed = 0
	vspeed = 0
	
	sprite_index = sBanditDeath
	checkAnimEnd(sprite_index, image_index, image_speed, image_number)
	
}