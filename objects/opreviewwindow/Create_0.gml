/// @description Insert description here
// You can write your code in this editor
previewSurf = -1
enemiesSurf = -1
h = room_height/TILE_SIZE * 3
w = room_width/TILE_SIZE * 3
dimension = oPlayer.currentDimension

shifting = false


function refreshPreview() {
	
	var _dimensionBelow = dimensionBelow(dimension)
	var _tilemap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(_dimensionBelow) + "_BG"))
	
	previewSurf = surface_create(w, h)
	var _surfTemp = surface_create(room_width, room_height)
	surface_set_target(_surfTemp)
		draw_clear(c_black)
		draw_tilemap(_tilemap,0,0)
		var _tilemap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(_dimensionBelow) + "_Col"))
		draw_tilemap(_tilemap,0,0)
		surface_reset_target()
		surface_set_target(previewSurf)
		draw_surface(_surfTemp, 0,0)
		surface_reset_target()
		surface_free(_surfTemp)
		
}

refreshPreview()