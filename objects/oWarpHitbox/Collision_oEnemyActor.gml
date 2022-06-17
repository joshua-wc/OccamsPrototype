/// @description Insert description here
// You can write your code in this editor
var warpDimension = irandom_range(1, 4)
other.layer = layer_get_id("Enemies_" + string(warpDimension))
other.currentDimension = warpDimension
other.collisionMap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(warpDimension) + "_Col"))
instance_destroy(self)