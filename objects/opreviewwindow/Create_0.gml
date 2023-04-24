/// @description Insert description here
// You can write your code in this editor



view_visible[1] = false

previewSurf = -1

h = 100
w = 180
dimension = oPlayer.currentDimension
previewDimension = oPlayer.nextDimension

previewX = oPlayer.x
previewY = oPlayer.y

shifting = false


function refreshPreview() {
	
	if(surface_exists(previewSurf)) {
		surface_free(previewSurf)	
	}
	
	previewDimension = oPlayer.nextDimension
	previewX = oPlayer.x + 50
	previewY = oPlayer.y
	
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
		
		surface_reset_target()
		surface_set_target(previewSurf)
		draw_surface_part(_surfTemp, previewX, previewY, w, h, 0, 0)
		//draw_surface(_surfTemp, 0,0)
		surface_reset_target()
		surface_free(_surfTemp)
		
}

refreshPreview()