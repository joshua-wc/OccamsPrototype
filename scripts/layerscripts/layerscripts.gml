// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function layerScriptBegin(){
	if (view_visible[1] && string_count(string(oPlayer.nextDimension), layer_get_name(self)))
	{
		surface_set_target(oController.previewSurface)
	}
}

function layerScriptEnd(){
	if event_type == ev_draw && event_number == 0 && oPlayer.shift && string_count(string(oPlayer.nextDimension), layer_get_name(self))
	surface_reset_target()
}