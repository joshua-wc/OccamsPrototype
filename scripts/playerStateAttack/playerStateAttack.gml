// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateAttack(){
sprite_index = sPlayerAttack
x_speed *= attackDeceleration
y_speed *= attackDeceleration

if image_index > 6 && canAttack {
	canAttack = false
	stamina -= 10
	show_debug_message("Attack!")
	self.attack = instance_create_layer(x + attackOffset, y, "Player", oMeleeHitbox)
}

checkAnimEnd(sprite_index, image_index, image_speed, image_number)


}