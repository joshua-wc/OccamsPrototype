// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeDimension(_targetDimension){
	
	
var layerId = layer_get_id("Dimension_" + string(_targetDimension) + "_Col")
var colMapId = layer_tilemap_get_id(layerId)

if PlayerCollision(colMapId)
{
	show_debug_message("Can't do that!")
	oPlayer.nextDimension = oPlayer.currentDimension
	return false
}

oPlayer.collisionMap = colMapId

mp_grid_clear_all(oController.grid)	

createPathGrid(_targetDimension)
	


var enemyLayer = layer_get_id("Enemies_" + string(oPlayer.currentDimension))
var enemies = layer_get_all_elements(enemyLayer)



for (var i = 0; i < array_length(enemies); i++) {
	var enemy = layer_instance_get_instance(enemies[i])
	
	if (point_distance(enemy.x, enemy.y, oPlayer.x, oPlayer.y) <= 75) {
		
		enemy.layer = layer_get_id("Enemies_" + string(_targetDimension))
		enemy.currentDimension = _targetDimension
		enemy.collisionMap = colMapId

	}
	
}

var layers = layer_get_all()

for (var i = 0; i < array_length(layers); i++) {
	var layerName = layer_get_name(layers[i])
	
	
	 
		
		if string_count(string(_targetDimension), layerName) || string_count("Player", layerName) {

			layer_set_visible(layers[i], true)

		} else {
			layer_set_visible(layers[i], false)
	

			
		}

}

oController.dimension = _targetDimension
oPlayer.currentDimension = _targetDimension
oController.alarm[0] = 30

}

