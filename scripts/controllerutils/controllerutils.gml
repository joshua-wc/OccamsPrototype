// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createPathGrid(_dimensionNum){
	
var tilesW = room_width / 16
var tilesH = room_height / 16


oController.grid = mp_grid_create(0,0, tilesW, tilesH, 16, 16)


var layerId = layer_get_id("Dimension_" + string(_dimensionNum) + "_Col")
oController.mapId = layer_tilemap_get_id(layerId)

for (var i = 0; i < tilesW; i++)
{
	for (var j = 0; j < tilesH; j++)
	{
		
		var tilesToCheck = tilemap_get(oController.mapId, i, j)
		if tilesToCheck != 0
		{
			mp_grid_add_cell(oController.grid, i, j)
		}
			
	}
}

}

function refreshPreview() {
	
	if(surface_exists(previewSurf)) {
		surface_free(previewSurf)	
	}
	
	previewDimension = oPlayer.nextDimension
	previewX = oPlayer.x - (w / 2)
	previewY = oPlayer.y - (h / 2)
	
	var _tilemap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(previewDimension) + "_BG"))
	
	previewSurf = surface_create(w, h)
	var _surfTemp = surface_create(room_width, room_height)
	surface_set_target(_surfTemp)
		draw_clear(c_black)
		draw_tilemap(_tilemap,0,0)
		var _tilemap = layer_tilemap_get_id(layer_get_id("Dimension_" + string(previewDimension) + "_Col"))
		draw_tilemap(_tilemap,0,0)
		with (oEnemyActor) {
			if (currentDimension = oPlayer.nextDimension) {
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)	
			}
		
		}	
		
		with (oPlayer) {
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)	
		}
		
		surface_reset_target()
		surface_set_target(previewSurf)
		draw_surface_part(_surfTemp, previewX, previewY, w, h, 0, 0)
		surface_reset_target()
		surface_free(_surfTemp)
		
}