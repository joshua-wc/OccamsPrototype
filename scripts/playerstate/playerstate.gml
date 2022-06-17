// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateIdle(){
	if hp <= 0 {
		image_index = 0
		state = playerStateDeath
	}
	
	if (staminaRecovering) {
		stamina += staminaRecoveryRate
	}
	if (stamina > maxStamina) {
		staminaRecovering = false
		stamina = maxStamina
	} else {
		staminaRecovering = true
	}

	
var move_horizontal = keyboard_check(vk_right) - keyboard_check(vk_left)
var move_vertical = keyboard_check(vk_up) - keyboard_check(vk_down)

x_speed = 0
y_speed = 0

if move_horizontal == 1 {
	x_speed = playerSpeed
	image_xscale = 1
	attackOffset = 25
	
} else if move_horizontal == -1 {
	x_speed = -playerSpeed
	image_xscale = -1
	attackOffset = -25
}

if move_vertical == -1 {
	y_speed = playerSpeed
	
} else if move_vertical == 1 {
	y_speed = -playerSpeed
	
}

if move_horizontal == 0 && move_vertical == 0 {
	x_speed *= attackDeceleration
	y_speed *= attackDeceleration	
}

image_speed = 1

if (x_speed == 0 && y_speed == 0) {
	sprite_index = sPlayerIdle
	} else {
		sprite_index = sPlayerRun
	}

if keyAttack && stamina > 5 {
	image_index = 0
	
	staminaRecovering = false
	state = playerStateAttack
}

if keySlide && (move_horizontal != 0 or move_vertical != 0) && stamina > 8 {
	image_index = 0
	stamina -= 8
	staminaRecovering = false
	state = playerStateSliding
}


}

function playerStateAttack(){
sprite_index = sPlayerAttack
image_speed = 1.8
x_speed *= attackDeceleration
y_speed *= attackDeceleration



if image_index > 6 && canAttack {
	canAttack = false
	stamina -= 10
	show_debug_message("Attack!")
	var attackConfig = 
	{
	x : x + attackOffset,
	y : y,
	layer: layer,
	dimension : currentDimension
	}
	self.attack = SpawnHitbox(oPlayerSwordHitbox, attackConfig)
}

endPlayerAttack(image_index, image_speed, image_number)


}

function playerStateSliding(){
sprite_index = sPlayerSlide
endPlayerSlide(image_index, image_speed, image_number)
}

function playerStateThrow(){
sprite_index = sPlayerThrow

endPlayerDefault(image_index, image_speed, image_number)	
}

function playerStateDeath(){
	x_speed = 0
	y_speed = 0
	image_speed = 0.4
sprite_index = sPlayerDeath
endPlayerDeath(image_index, image_speed, image_number)
}