var layers = layer_get_all()

var enemyNumber = 1

for (var i = 0; i < array_length(layers); i++) 
{
	
	var layerName = layer_get_name(layers[i])
	
	if string_count("Enemies", layerName) {
		show_debug_message("Hello from the room creation code for loop! " + layerName)
		
	var enemies = layer_get_all_elements(layerName)
	show_debug_message(enemies)
	
	for (var j = 0; j < array_length(enemies); j++) 
	{
		var enemy = layer_instance_get_instance(enemies[j])
		with (enemy) 
		{
			originDimension = real(string_char_at(layerName, 9))
			currentDimension = originDimension
			collisionMap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(originDimension) + "_Col"))
			number = enemyNumber
	
		}
		enemyNumber++
	}
	
	enemyNumber = 1
	}
}



randomise()