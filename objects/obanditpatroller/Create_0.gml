/// @description Insert description here
// You can write your code in this editor

patrollerState = enemyPatrollerStateIdle
aggroRange = 200
attackRange = 40
attackDeceleration = 0.85
attackDelay = 40
attackOffset = 18
originX = x
originY = y

hp = 5

inPlayerDimension = false

canAttack = true
canBeDamaged = true

target = oPlayer

alarm_set(3,4)

newPath = path_add()
alarm_set(2, 1)





