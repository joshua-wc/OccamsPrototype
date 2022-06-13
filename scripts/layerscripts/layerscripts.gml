// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function layerScriptBegin(){
	show_debug_message(string(string(self.dimension)))
	if (string_count("Enemies", layer_get_name(id)))
	{
		show_debug_message("Hello!")
		surface_set_target(oController.previewSurface)
		
	}
}

function layerScriptEnd(){
	if event_type == ev_draw && event_number == 0 && oPlayer.shift && string_count(string(oPlayer.nextDimension), layer_get_name(self))
	surface_reset_target()
}