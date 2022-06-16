// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function turretStateIdle(){
	sprite_index = sBanditIdle
	image_speed = 1
	aggroRange = 350
	
	checkAggroTurret()
}

function checkAggroTurret() {
	if (point_distance(x, y, target.x, target.y) <= aggroRange and target.currentDimension = currentDimension) {
	state = turretStateAttacking
	
	}
}

function turretStateAttacking() {
		if !inPlayerDimension {
		state = enemyStateIdle
		exit
	}
	faceDirectionChasing()
	
sprite_index = sBanditAttack

var shootDirection = point_direction(x, y, oPlayer.x, oPlayer.y)
attackConfig.direction = shootDirection
attackConfig.speed = bulletSpeed



if image_index > 4 && canAttack {
	canAttack = false

	self.attack = spawnBullet(oRockMovable, attackConfig)
	alarm[0] = attackDelay
}



checkAnimEnd(sprite_index, image_index, image_speed, image_number)
}