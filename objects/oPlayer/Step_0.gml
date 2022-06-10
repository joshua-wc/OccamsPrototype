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

attackConfig = 
{
x : x + attackOffset,
y : y,
layer: layer,
dimension : currentDimension
}

if keyGrenade {
if ammo <= 0 exit
playerState = playerStateThrow
instance_create_layer(x,y,layer,oWarpGrenade)
ammo -= 1	
}


if stamina > 20 {
if dimensionUp nextDimension++
if dimensionDown nextDimension--

if dimensionShiftOne  nextDimension = 1
if dimensionShiftTwo nextDimension = 2
if dimensionShiftThree nextDimension = 3

}

if shift = false view_visible[1] = false

if nextDimension > 4 nextDimension = 1
if nextDimension < 1 nextDimension = 4
if (nextDimension != currentDimension and shift = false) {
	view_visible[1] = true
	alarm[0] = 120
	shift = true
}

collisionMap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(currentDimension) + "_Col"))



script_execute(playerState)


PlayerCollision()

 


