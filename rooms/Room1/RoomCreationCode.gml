var layers = layer_get_all()

var enemyNumber = 1

for (var i = 0; i < array_length(layers); i++) 
{
	layer_script_begin(layers[i], layerScriptBegin)
	layer_script_end(layers[i], layerScriptEnd)
	
	
	
	var layerName = layer_get_name(layers[i])
	
	if (layerName = "Player")
	{
		show_debug_message(layerName)
		layers[i].dimension = oPlayer.currentDimension
	} else if (string_count("Enemies", layerName))
	{
		layers[i].dimension = real(string_char_at(layerName, 9))
	} else 
	{
		layers[i].dimension = real(string_char_at(layerName, 11))
	}
	
	
	
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
			currentDimension = real(string_char_at(layerName, 9))
			number = enemyNumber
		show_debug_message(enemy)
		}
		enemyNumber++
	}
	
	enemyNumber = 1
	}
}

randomise()