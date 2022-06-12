/// @description Insert description here
// You can write your code in this editor
if (view_visible[1] = true)
{
	
	/*if (shifting)
	{
	draw_set_alpha(0.6)

	var layers = layer_get_all()
	
	show_debug_message(string(array_length(layers)))
	
	for (var i = 0; i < array_length(layers); i++) {
	var layerName = layer_get_name(layers[i])
	
	
	 
		
		if string_count(string(oPlayer.nextDimension), layerName) || string_count("Player", layerName) {

				surface_set_target(previewSurface)
				var tilemap = layer_tilemap_get_id(layers[i])
				draw_tilemap(tilemap, 0, 0)
				surface_reset_target()

		}


	
	
}
	}*/
draw_surface(previewSurface, oPlayer.x -100, oPlayer.y - 70)
shifting = false

}