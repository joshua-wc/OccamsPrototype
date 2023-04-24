/// @description Insert description here
// You can write your code in this editor
if shifting {
	view_visible[1] = false

exit
}

if !shifting {
	/*view_visible[1] = true
	view_xport[1] = oPlayer.x + 50;
	view_yport[1] = oPlayer.y;
	view_wport[1] = room_width / 10;
	view_hport[1] = room_height / 10;
	view_camera[1] = camera_create_view(32, 32, room_width, room_height, 0, noone, -1, -1, 0, 0);*/
	
	/*if (surface_exists(previewSurf)) {
		var _surfTemp = surface_create(w, h)
		surface_set_target(_surfTemp)
		//draw_clear(c_black)
		
		var _layerId = layer_get_id("Dimension_" + string(previewDimension) + "_BG")
		var _tilemapId = layer_tilemap_get_id(_layerId)
		
		draw_tilemap(_tilemapId, x, y)
		
		var _layerId = layer_get_id("Dimension_" + string(previewDimension) + "_Col")
		var _tilemapId = layer_tilemap_get_id(_layerId)
		
		draw_tilemap(_tilemapId, x, y)
		
		//draw_clear_alpha(c_black, 0.0)
		
		with(oEnemyActor) {
		
		if (currentDimension = oPreviewWindow.previewDimension) {
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)	
			}
		
		}
		
		surface_reset_target()
		
	surface_set_target(previewSurf)
	
		
		surface_reset_target()
		draw_surface(_surfTemp, oPlayer.x - 90, oPlayer.y - 50)
		surface_free(_surfTemp)
	} else {
	previewSurface = surface_create(w, h)	
	}
}*/

refreshPreview();
draw_surface(previewSurf, x, y)

/*if (!surface_exists(enemiesSurf)) enemiesSurf = surface_create(w, h)
surface_set_target(enemiesSurf)
draw_clear_alpha(c_black, 0.0)

with(oEnemyActor) {

	if(currentDimension = dimensionBelow(oPreviewWindow.dimension))
	{
		
		draw_sprite_ext(sprite_index, image_index, x/TILE_SIZE * 3, y/TILE_SIZE * 3, image_xscale / TILE_SIZE * 3, image_yscale / TILE_SIZE * 3, image_angle, c_white, image_alpha)
	}
	
*/
}
//surface_reset_target()
//draw_surface(enemiesSurf, x, y)