// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyPatrollerStateIdle(){

	sprite_index = sBanditRun
	image_speed = 1
	aggroRange = 200
	
	faceDirectionRunning(attackOffset)
	
	if path_position = 1 or path_position = undefined 
		sprite_index = sBanditIdle;


if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	patrollerState = enemyPatrollerStateChasing
	show_debug_message("Aha!")
}


	

}

function enemyPatrollerStateChasing(){
	
path_end()

faceDirectionRunning(attackOffset)
	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400
//if point_distance(x, y, target.x, target.y) > 20 move_towards_point(target.x, target.y, 2)

mp_grid_path(oGridSetup, chasePath, x, y, oPlayer.x, oPlayer.y, 1)
path_start(chasePath, 3, path_action_stop, 1)

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

checkAnimEnd(sprite_index, image_index, image_speed, image_number)

}

function enemyPatrollerStateReturning(){
sprite_index = sBanditRun
faceDirectionRunning(attackOffset)
	image_speed = 0.5
	aggroRange = 200
	move_towards_point(originX, originY, 1)
	if point_distance(x, y, originX, originY) <= 2 
	{
		
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