/// @description Insert description here
// You can write your code in this editor
if !shifting exit
if (!surface_exists(previewSurf)) refreshPreview();
draw_surface(previewSurf, x, y)

if (!surface_exists(enemiesSurf)) enemiesSurf = surface_create(w, h)
surface_set_target(enemiesSurf)
draw_clear_alpha(c_black, 0.0)

with(oEnemyActor) {

	if(currentDimension = dimensionBelow(oPreviewWindow.dimension))
	{
		
		draw_sprite_ext(sprite_index, image_index, x/TILE_SIZE * 3, y/TILE_SIZE * 3, image_xscale / TILE_SIZE * 3, image_yscale / TILE_SIZE * 3, image_angle, c_white, image_alpha)
	}
	

}
surface_reset_target()
draw_surface(enemiesSurf, x, y)