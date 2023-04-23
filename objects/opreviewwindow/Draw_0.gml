/// @description Insert description here
// You can write your code in this editor
if !surface_exists(previewSurf)
{
    previewSurf = surface_create(camera_get_view_width(view_camera[1]), camera_get_view_height(view_camera[1]));
    view_surface_id[1] = previewSurf;
	
}


