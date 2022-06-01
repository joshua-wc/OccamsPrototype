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
dimension : Current_Dimension
}

if keyGrenade {
if ammo <= 0 exit
playerState = playerStateThrow
instance_create_layer(x,y,layer,oWarpGrenade)
ammo -= 1	
}


if stamina > 20 {
if dimensionUp Next_Dimension++
if dimensionDown Next_Dimension--

if dimensionShiftOne  Next_Dimension = 1
if dimensionShiftTwo Next_Dimension = 2
if dimensionShiftThree Next_Dimension = 3

}


if Next_Dimension > 4 Next_Dimension = 1
if Next_Dimension < 1 Next_Dimension = 4
if (Next_Dimension != Current_Dimension) {
	stamina -= 25
	ChangeDimension(Next_Dimension)
	
}


script_execute(playerState)


PlayerCollision()

 


