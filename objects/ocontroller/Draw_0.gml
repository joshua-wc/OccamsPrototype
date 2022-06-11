/// @description Insert description here
// You can write your code in this editor
if (view_visible[1] = true)
{
	previewSurface = surface_create(210, 150)
	view_surface_id[1] = previewSurface
	surface_set_target(previewSurface)
	draw_set_alpha(0.6)

	var layers = layer_get_all()
	
	show_debug_message(string(array_length(layers)))
	
	for (var i = 0; i < array_length(layers); i++) {
	var layerName = layer_get_name(layers[i])
	
	
	 
		
		if string_count(string(oPlayer.nextDimension), layerName) || string_count("Player", layerName) {

			
				tilemap = layer_tilemap_get_id(layers[i])
				draw_tilemap(tilemap, 0, 0)
			

		}


	
	
}
surface_reset_target()
draw_surface(previewSurface, oPlayer.x + 50, oPlayer.y - 50)

}