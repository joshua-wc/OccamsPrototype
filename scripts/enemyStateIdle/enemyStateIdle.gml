// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateIdle(){

	sprite_index = sBanditIdle
	image_speed = 1
	aggroRange = 200
	
	hspeed = 0
	vspeed= 0
	




if (point_distance(x, y, target.x, target.y) <= aggroRange) {
	banditState = enemyStateChasing
	
}

if point_distance(originX, originY, x, y ) > 8 {
	banditState = enemyStateReturning

}
	

}