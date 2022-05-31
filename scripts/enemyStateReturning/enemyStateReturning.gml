// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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