// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyStateDeath(){
	hspeed = 0
	vspeed = 0
	
	sprite_index = sBanditDeath
	checkAnimEnd(sprite_index, image_index, image_speed, image_number, self)
	
}