// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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

checkAnimEnd(sprite_index, image_index, image_speed, image_number, self)

}