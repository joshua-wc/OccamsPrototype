// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeDimension(dimensionNum){
	

var layers = layer_get_all()

var enemyLayer = layer_get_id("Enemies_" + string(oPlayer.currentDimension))
var enemies = layer_get_all_elements(enemyLayer)



for (var i = 0; i < array_length(enemies); i++) {
	var enemy = layer_instance_get_instance(enemies[i])
	if (point_distance(enemy.x, enemy.y, oPlayer.x, oPlayer.y) <= 75) {
		
		enemy.layer = layer_get_id("Enemies_" + string(dimensionNum))
		enemy.currentDimension = dimensionNum
	}
	
}


for (var i = 0; i < array_length(layers); i++) {
	var layerName = layer_get_name(layers[i])
	
	 
		
		if string_count(string(dimensionNum), layerName) || string_count("Player", layerName) {

			layer_set_visible(layers[i], true)

		} else {
			layer_set_visible(layers[i], false)
	

			
		}

}

oPlayer.currentDimension = oPlayer.nextDimension
}