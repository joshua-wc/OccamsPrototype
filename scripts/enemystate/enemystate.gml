// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateIdle(){

	sprite_index = sBanditIdle
	image_speed = 1
	aggroRange = 200
	
	hspeed = 0
	vspeed= 0
	




if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	state = enemyStateChasing
	
}

if point_distance(originX, originY, x, y ) > 8 {
	state = enemyStateReturning

}
	

}

function enemyStateChasing(){
	

	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400



if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
	state = enemyStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	state = enemyStateAttacking
}


	if (keyboard_check(vk_space))
	{
		addVector(steeringForce, evadeForce())
	} else {
		addVector(steeringForce, arriveForce([oPlayer.x, oPlayer.y], 50))
	}
	
	
	
	addVector(velocity, steeringForce)
	limitVectorMagnitude(velocity, maxSpeed)
	addVector(position, velocity)
	setVector(steeringForce, [0,0])
	show_debug_message(position)
	vectorToSpeed(position)
	show_debug_message(string(vspeed))
	faceDirectionChasing()





}

function enemyStateAttacking(){	
	
	if !inPlayerDimension {
		state = enemyStateIdle
		exit
	}
	faceDirectionChasing()
	
sprite_index = sBanditAttack



hspeed *= attackDeceleration
vspeed *= attackDeceleration

if image_index > 4 && canAttack {
	canAttack = false

	self.attack = SpawnHitbox(oBanditSwordHitbox, attackConfig)
}

oBandit.alarm[0] = attackDelay

checkAnimEnd(sprite_index, image_index, image_speed, image_number)

}

function enemyStateReturning(){
sprite_index = sBanditRun
	image_speed = 0.5
	aggroRange = 200
	move_towards_point(originX, originY, 1)
	if point_distance(x, y, originX, originY) <= 8 state = enemyStateIdle
	
	if (point_distance(x, y, target.x, target.y) <= aggroRange) {
	state = enemyStateChasing
	
}
	
}

function enemyStateDeath(){
	hspeed = 0
	vspeed = 0
	
	sprite_index = sBanditDeath
	checkAnimEnd(sprite_index, image_index, image_speed, image_number)
	
}