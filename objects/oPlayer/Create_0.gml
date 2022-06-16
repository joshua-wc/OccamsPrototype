/// @description Insert description here
// You can write your code in this editor


playerState = playerStateIdle

collisionMap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(currentDimension) + "_Col"))

hp = 10
maxHp = 10

playerSpeed = 4

attackDeceleration = 0.86
attackOffset = 25

stamina = 4000
maxStamina = 4000
staminaRecovering = true
staminaRecoveryRate = 0.16

canAttack = true

ammo = 300



