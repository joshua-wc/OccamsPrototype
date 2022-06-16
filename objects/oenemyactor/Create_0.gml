/// @description Insert description here
// You can write your code in this editor
state = enemyStateIdle
aggroRange = 200
attackRange = 25
attackDeceleration = 0.85
attackDelay = 40
attackOffset = 18
originX = x
originY = y

hp = 5
chaseSpeed = 3
walkSpeed = 2


position = array_create(2)
velocity = array_create(2)
steeringForce = array_create(2)

maxSpeed = 3
maxForce = 0.1



inPlayerDimension = false

canAttack = true
canBeDamaged = true

target = oPlayer

