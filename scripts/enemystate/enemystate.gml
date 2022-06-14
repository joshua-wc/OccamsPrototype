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

var _dir, _accel;

_dir = point_direction(x, y, oPlayer.x, oPlayer.y)
_accel[0] = lengthdir_x(accelForce, _dir)
_accel[1] = lengthdir_y(accelForce, _dir)



if point_distance(x, y, target.x, target.y) > 20
{
	//move_towards_point(target.x, target.y, chaseSpeed)
	
	
	setVector(acceleration, _accel)
	addVector(velocity, acceleration)

	show_debug_message(string(velocity))
	limitVectorMagnitude(velocity, 3)
	
	vectorToSpeed(velocity)
}

if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
	state = enemyStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	state = enemyStateAttacking
}



}

function enemyStateAttacking(){	
	
	if !inPlayerDimension {
		state = enemyStateIdle
		exit
	}
	
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