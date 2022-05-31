// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateChasing(){
	

	
image_speed = 1
sprite_index = sBanditRun
aggroRange = 400
if point_distance(x, y, target.x, target.y) > 20 move_towards_point(target.x, target.y, 2)

if point_distance(x, y, target.x, target.y) > aggroRange {
	banditState = enemyStateIdle
}

if (point_distance(x, y, target.x, target.y) < attackRange && canAttack) {
	image_index = 0
	banditState = enemyStateAttacking
}



}