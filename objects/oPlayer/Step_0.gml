/// @description Insert description here
// You can write your code in this editor
dimensionShiftOne = keyboard_check_pressed(ord("1"))
dimensionShiftTwo = keyboard_check_pressed(ord("2"))
dimensionShiftThree = keyboard_check_pressed(ord("3"))
dimensionUp = keyboard_check_pressed(ord("E"))
dimensionDown = keyboard_check_pressed(ord("Q"))

keyAttack = keyboard_check_pressed(vk_space)
keySlide = keyboard_check_pressed(vk_control)
keyGrenade = keyboard_check_pressed(vk_alt)

keyThrowing = keyboard_check_pressed(ord("G"))
keyThrown = keyboard_check_released(ord("G"))


if stamina > 20 {
if dimensionUp nextDimension++
if dimensionDown nextDimension--

if dimensionShiftOne  nextDimension = 1
if dimensionShiftTwo nextDimension = 2
if dimensionShiftThree nextDimension = 3

}


if nextDimension > 4 nextDimension = 1
if nextDimension < 1 nextDimension = 4
if (nextDimension != currentDimension) {
	stamina -= 25
	ChangeDimension(nextDimension)
	
}





script_execute(state)


PlayerCollision(collisionMap)

 


