// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateIdle(){

	sprite_index = sBanditIdle
	image_speed = 1
	aggroRange = 200
	
	hspeed = 0
	vspeed= 0
	




if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	banditState = enemyStateChasing
	
}

if point_distance(originX, originY, x, y ) > 8 {
	banditState = enemyStateReturning

}
	

}

function enemyStateChasing(){
	

	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400
if point_distance(x, y, target.x, target.y) > 20 move_towards_point(target.x, target.y, 2)

if point_distance(x, y, target.x, target.y) > aggroRange or target.currentDimension != currentDimension {
	banditState = enemyStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	banditState = enemyStateAttacking
}



}

function enemyStateAttacking(){	
	
	if !inPlayerDimension {
		banditState = enemyStateIdle
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
	if point_distance(x, y, originX, originY) <= 8 banditState = enemyStateIdle
	
	if (point_distance(x, y, target.x, target.y) <= aggroRange) {
	banditState = enemyStateChasing
	
}
	
}

function enemyStateDeath(){
	hspeed = 0
	vspeed = 0
	
	sprite_index = sBanditDeath
	checkAnimEnd(sprite_index, image_index, image_speed, image_number)
	
}