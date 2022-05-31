/// @description Insert description here
// You can write your code in this editor
warpDimension = irandom_range(1, 4)
other.layer = layer_get_id("Enemies_" + string(warpDimension))
other.currentDimension = warpDimension
instance_destroy()